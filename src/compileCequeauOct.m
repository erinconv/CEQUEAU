function compileCequeauOct()
    script_dir = fileparts(mfilename('fullpath'));
    mex_dir = fullfile(script_dir, '..', 'mex');
    if ~exist(mex_dir, 'dir')
        mkdir(mex_dir);
    end

    SOURCES = ' CequeauQuantiteMex.cpp ';
    SOURCES = [SOURCES 'Barrage.cpp '];
    SOURCES = [SOURCES 'BassinVersant.cpp '];
    SOURCES = [SOURCES 'CarreauEntier.cpp '];
    SOURCES = [SOURCES 'CarreauPartiel.cpp '];
    SOURCES = [SOURCES 'DonneesMeteo.cpp '];
    SOURCES = [SOURCES 'Meteo.cpp '];
    SOURCES = [SOURCES 'Parametres.cpp '];

    SOURCES = [SOURCES 'FonteCequeau.cpp '];
    SOURCES = [SOURCES 'EvapoCequeau.cpp '];
    SOURCES = [SOURCES 'FonteTemplate.cpp '];

    SOURCES = [SOURCES 'FonteCemaNeige.cpp '];

    SOURCES = [SOURCES 'FonteUEB.cpp '];
    SOURCES = [SOURCES 'SolarFunctions.cpp '];

    SOURCES = [SOURCES 'EvapoTemplate.cpp '];
    SOURCES = [SOURCES 'EvapoPriestleyTaylor.cpp '];

    SOURCES = [SOURCES 'EvapoKPenman.cpp '];
    SOURCES = [SOURCES 'EvapoMcGuinness.cpp '];
    SOURCES = [SOURCES 'Simulation.cpp '];

    SOURCES = [SOURCES 'EvapoPenmanMont.cpp '];
    SOURCES = [SOURCES 'EvapoMorton.cpp '];

    SOURCES = [SOURCES 'Simulation_IO.cpp '];

    SOURCES = [SOURCES 'Simulation_Production.cpp '];
    SOURCES = [SOURCES 'Simulation_Assimilation.cpp '];

    SOURCES = [SOURCES 'Simulation_Transfert.cpp '];
    SOURCES = [SOURCES 'stdafx.cpp '];

    SOURCES = [SOURCES 'ParametresQualite.cpp '];

    SOURCES = [SOURCES 'SimulationQualite.cpp '];

    SOURCES = [SOURCES 'SimulationQualite_IO.cpp '];

    SOURCES = [SOURCES 'SimulationQualite_Ombrage.cpp '];
    SOURCES = [SOURCES 'Interpolateur.cpp '];

    SOURCES = [SOURCES 'InterpolateurPolygoneThiessen.cpp '];
    SOURCES = [SOURCES 'InterpolateurPonderationStations.cpp '];

    SOURCES = [SOURCES 'Station.cpp '];
    SOURCES = [SOURCES 'ListeStation.cpp '];
    SOURCES = [SOURCES 'ParametresInterpolation.cpp '];

    SOURCES = [SOURCES 'DLI.cpp '];
    SOURCES = [SOURCES 'DateChrono.cpp '];

    SOURCES = [SOURCES 'Puits.cpp '];

  # --- set c++ version ---
  CXXFLAGS = " -std=c++14";

  # --- enable/disable logging ---
  log = false;
  COMPFLAGS=" ";

  if ~log
      COMPFLAGS=" -DSANS_LOG ";
  end

  # --- enable/disable debugging ---
  debug = false;
  if debug
      DBG_FLAG = " -g";
      OPT_FLAG = " -O0";
      dbg = "_DBG";
  else
      DBG_FLAG = "";
      OPT_FLAG = " -O2";
      dbg = "";
  end

  OUTFILE = fullfile(mex_dir, 'cequeauQuantiteOct');
  OUTFILE = strcat(OUTFILE, dbg);
  OUTFILE = char(OUTFILE);
  FLAGS = strcat(OPT_FLAG, " -DENV_OCTAVE");

  command = sprintf("mkoctfile --mex%s%s%s%s -o \"%s\" %s", ...
                    FLAGS, CXXFLAGS, DBG_FLAG, COMPFLAGS, OUTFILE, SOURCES);

  eval(command);
  fprintf("Compilation finished succesfully")
end
