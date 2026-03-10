## 1. What You Need

Before running the CEQUEAU model, ensure you have the following:

- CEQUEAU source code (with `src/` folder)
- Octave or MATLAB installed
- C/C++ compiler configured for your Octave/MATLAB
- Input files generated for your basin:
  - `path/to/your/project/results/parameters.mat` (contains `parametres`)
  - `path/to/your/project/results/bassinVersant.mat` (contains `bassinVersant`)
  - `path/to/your/project/meteo/meteo_cequeau.nc`

Recommended project layout:

```text
path/to/your/project/
  geographic/
  meteo/
    meteo_cequeau.nc
  results/
    parameters.mat
    bassinVersant.mat
```

---

## 2. Compile the MEX Binary

The compile scripts in `src/` create the `mex/` directory automatically if it does not exist.

### 2.1 Octave

```octave
cd('path/to/your/cequeau/src');
compileCequeauOct;
```

### 2.2 MATLAB

```matlab
cd('path/to/your/cequeau/src');
compileCequeauMat;
```

After a successful compile, the MEX file is written to:

- `path/to/your/cequeau/mex/`

---

## 3. Setting Up the MATLAB/Octave Run Environment

Data written by **pycequeau** must be transformed in the MATLAB/Octave environment to match the format expected by the CEQUEAU model. This section describes a minimal run environment you can adapt to your workflow.

In the project structure created by pycequeau, create a folder named `simulations` (or any folder where you keep your run scripts). Add the three helper files described below.

### 3.1 Configuring the Meteo Structure

Create a file named `create_grid.m` and paste the following:

```matlab
function grid = create_grid()
    grid.tMax = [];
    grid.tMin = [];
    grid.pTot = [];
    grid.rayonnement = [];
    grid.nebulosite = [];
    grid.pression = [];
    grid.vitesseVent = [];
end
```

This script initializes an empty struct with the meteorological fields CEQUEAU expects. You can add more fields to the structure if your setup uses additional meteorological variables.

Next, create a file named `upload_meteo.m`:

```matlab
function grid = upload_meteo(meteo)
    % Variables expected in the NetCDF meteo file.
    var_names = {'pTot', 'tMax', 'tMin', 'pression', ...
                 'rayonnement', 'vitesseVent', 'nebulosite'};

    % Octave requires explicit netcdf package loading.
    if exist('OCTAVE_VERSION', 'builtin')
        pkg load netcdf;
    end

    % Open NetCDF as read-only.
    ncID = netcdf.open(meteo, 'NC_NOWRITE');

    % Initialize output structure.
    grid = create_grid();

    % Load each meteo variable and transpose to [time x CE].
    for idx = 1:numel(var_names)
        varID = netcdf.inqVarID(ncID, var_names{idx});
        varData = netcdf.getVar(ncID, varID);
        grid.(var_names{idx}) = varData';
    end

    % Load model time vector (datenum format expected by workflow).
    varID = netcdf.inqVarID(ncID, 'pasTemp');
    grid.t = netcdf.getVar(ncID, varID);

    % Always close NetCDF handle.
    netcdf.close(ncID);
end
```

This function reads the NetCDF file produced by pycequeau and returns a struct in the format CEQUEAU expects (field names and dimensions).

The following step is optional but recommended if you need to restrict the simulation to a specific date range. Create a file named `slice_meteo_by_execution.m` and paste the following:

```matlab
function [meteo_out, info] = slice_meteo_by_execution(meteo_in, execution, ipassim_hours)
% Slice meteo rows to execution period.
% Inputs:
%   meteo_in       struct with meteo fields
%   execution      struct with dateDebut/dateFin
%   ipassim_hours  timestep in hours (default: 24)
% Outputs:
%   meteo_out      sliced meteo struct
%   info           diagnostics

  if nargin < 3 || isempty(ipassim_hours)
    ipassim_hours = 24;
  end

  if ~isfield(execution, "dateDebut") || ~isfield(execution, "dateFin")
    error("execution must contain dateDebut and dateFin.");
  end

  date_debut = execution.dateDebut;
  date_fin = execution.dateFin;
  if ~isfinite(date_debut) || ~isfinite(date_fin) || date_fin < date_debut
    error("Invalid execution period: dateDebut/dateFin.");
  end

  if ~isfinite(ipassim_hours) || ipassim_hours <= 0
    error("ipassim_hours must be > 0.");
  end

  all_fields = fieldnames(meteo_in);
  if isempty(all_fields)
    error("meteo_in is empty.");
  end

  % Infer number of time rows from first numeric matrix field.
  n_rows = -1;
  for k = 1:numel(all_fields)
    f = all_fields{k};
    x = meteo_in.(f);
    if isnumeric(x) && ismatrix(x) && ~isscalar(x)
      n_rows = size(x, 1);
      break;
    end
  end
  if n_rows <= 0
    error("Could not infer meteo timestep count from meteo_in.");
  end

  step_days = ipassim_hours / 24.0;
  expected_rows = round((date_fin - date_debut + 1) * (24.0 / ipassim_hours));

  info = struct();
  info.dateDebut = date_debut;
  info.dateFin = date_fin;
  info.ipassimHours = ipassim_hours;
  info.expectedRows = expected_rows;
  info.inputRows = n_rows;

  % Prefer slicing by explicit time vector if available.
  use_time_vector = false;
  if isfield(meteo_in, "t") && isnumeric(meteo_in.t)
    t_vec = meteo_in.t(:);
    if numel(t_vec) == n_rows
      use_time_vector = true;
    end
  end

  if use_time_vector
    tol = max(1e-6, step_days / 10.0);
    idx = find(t_vec >= (date_debut - tol) & t_vec <= (date_fin + tol));
    if isempty(idx)
      error("No meteo timesteps found inside execution period.");
    end
    idx_start = idx(1);
    idx_end = idx(end);
  else
    if expected_rows > n_rows
      error("Requested %d timesteps, but meteo contains only %d.", expected_rows, n_rows);
    end
    idx_start = 1;
    idx_end = expected_rows;
  end

  % Apply the same row slice to all numeric matrix fields.
  meteo_out = meteo_in;
  for k = 1:numel(all_fields)
    f = all_fields{k};
    x = meteo_in.(f);
    if isnumeric(x) && ismatrix(x) && size(x, 1) == n_rows
      meteo_out.(f) = x(idx_start:idx_end, :);
    end
  end

  % If no explicit t is present, synthesize it.
  if ~isfield(meteo_out, "t")
    n_out = idx_end - idx_start + 1;
    meteo_out.t = (date_debut + (0:n_out-1)' * step_days);
  end

  info.idxStart = idx_start;
  info.idxEnd = idx_end;
  info.outputRows = idx_end - idx_start + 1;
end
```

This function ensures that meteo rows match the requested simulation period, slices all meteorological matrix fields consistently, and returns diagnostic information if something goes wrong.

At this point, your `simulations` folder should contain:

```text
path/to/your/project/
  simulations/
    create_grid.m
    upload_meteo.m
    slice_meteo_by_execution.m
```

---

## 4. Main Run Script (Self-Contained)

Create your main run script and name it `run_cequeau.m` (or any name you prefer):

```matlab
clear

% 1) Add compiled mex folder to path.
addpath('path/to/your/cequeau/mex');

% 2) Define your project directory.
project_path = 'path/to/your/project';

% 3) Load generated CEQUEAU input structures.
params_path = fullfile(project_path, 'results', 'parameters.mat');
bassin_path = fullfile(project_path, 'results', 'bassinVersant.mat');
load(params_path);      % must load variable: parametres
load(bassin_path);      % must load variable: bassinVersant

% 4) Define simulation period.
execution.dateDebut = datenum(1979, 1, 1);
execution.dateFin   = datenum(1980, 12, 31);

% 5) Load meteo and align it with execution range.
meteo_file = fullfile(project_path, 'meteo', 'meteo_cequeau.nc');
meteo_grid = upload_meteo(meteo_file);
[meteo_grid, meteo_slice_info] = ...
    slice_meteo_by_execution(meteo_grid, execution, parametres.option.ipassim);

fprintf("Meteo sliced: input rows=%d, output rows=%d, idx=[%d:%d]\n", ...
        meteo_slice_info.inputRows, meteo_slice_info.outputRows, ...
        meteo_slice_info.idxStart, meteo_slice_info.idxEnd);

% 6) Run CEQUEAU.

% Select MEX function based on runtime environment
if exist('OCTAVE_VERSION', 'builtin')
    ceq_fun = 'cequeauQuantiteOct';
else
    ceq_fun = 'cequeauQuantiteMat';
end

if exist(ceq_fun, 'file') == 0
    error("MEX function '%s' not found in path. Compile and add your mex folder.", ceq_fun);
end

fprintf("Using runtime function: %s\n", ceq_fun);

% Run CEQUEAU as-is (no normalization/fixup)
[y.etatsCE, y.etatsCP, y.etatsFonte, y.etatsEvapo, y.etatsBarrage, y.pasDeTemps, ...
 y.avantassimilationssCE, y.avantassimilationssFonte, ...
 y.avantassimilationssEvapo, y.etatsQualCP, y.avAssimQual] = ...
    feval(ceq_fun, execution, parametres, bassinVersant, meteo_grid, [], [], []);

fprintf("Simulation finished.\n");
```

The script automatically selects the correct MEX function (`cequeauQuantiteOct` or `cequeauQuantiteMat`) based on whether you are running in Octave or MATLAB, so no manual change is required.

---

## 5. Validate Results and Plot CP1 Debit

Append the following block after the run call in your script to extract results and plot CP1 discharge:

```matlab
% Extract common outputs
resu.CP.debit  = cat(1, y.etatsCP(2:end).debit);
resu.CP.volume = cat(1, y.etatsCP(2:end).volume);
resu.CP.apport = cat(1, y.etatsCP(2:end).apport);

% Build CP1 time series
debit_cp1 = resu.CP.debit(:, 1);
t = y.pasDeTemps(:);

% Ensure same vector length
n = min(numel(t), numel(debit_cp1));
t = t(1:n);
debit_cp1 = debit_cp1(1:n);

% Plot
figure;
plot(t, debit_cp1, 'b-', 'LineWidth', 1.2);
grid on;
xlabel('Time');
ylabel('Debit CP 1 (m^3/s)');
title('CP 1 Debit Time Series');
datetick('x', 'yyyy-mm', 'keeplimits');
```

When validating, check that:

- The plot is continuous over the expected time range.
- No outputs are empty or missing.
- There are no obvious spikes or gaps that might indicate malformed inputs.

---

## Related Documentation

For more information about the input/output format, you can refer to:

- Advanced modules (DLI, pumping, shading, quality): [`guide.md`](guide.md)
- Full field-level schema reference: [`inputs_outputs.md`](inputs_outputs.md)
