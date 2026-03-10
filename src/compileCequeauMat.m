function compileCequeauMat()
    script_dir = fileparts(mfilename('fullpath'));
    mex_dir = fullfile(script_dir, '..', 'mex');
    if ~exist(mex_dir, 'dir')
        mkdir(mex_dir);
    end

    % source files
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

    SOURCES = [SOURCES 'EvapoPenmanMont.cpp '];
    SOURCES = [SOURCES 'EvapoMorton.cpp '];

    SOURCES = [SOURCES 'Simulation.cpp '];
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
       

    compiler = string(mex.getCompilerConfigurations('c++').Manufacturer);
    CXXFLAGS=" CXXFLAGS=$CXXFLAGS ";
    COMPFLAGS=" COMPFLAGS='$COMPFLAGS ";
    
    if strcmp(compiler, 'Microsoft')
        COMPILER_CXX_FLAGS = "";
        COMPILER_COMP_FLAGS = " /std:c++14 ";
    elseif strcmp(compiler, 'GNU')
        COMPILER_CXX_FLAGS = " -std=c++14 ";
        COMPILER_COMP_FLAGS = "";
    end
    
    % --- enable/disable logging ---
    log = false;
    LOG_FLAG="";
    if ~log
        LOG_FLAG=" /DSANS_LOG";
    end
    
    % --- enable/disable debugging ---
    debug = false;
    if debug
        DBG_FLAG = "-g ";
        dbg = "_DBG ";
    else
        DBG_FLAG = " ";
        dbg = " ";
    end
    
    CXXFLAGS=strcat(CXXFLAGS,COMPILER_CXX_FLAGS);
    COMPFLAGS=strcat(COMPFLAGS,COMPILER_COMP_FLAGS,LOG_FLAG,"' ");
    
    OUTFILE = "../mex/cequeauQuantiteMat";
    OUTFILE = strcat(OUTFILE, dbg);
    
    command = strcat("mex -v -largeArrayDims -output ", OUTFILE, DBG_FLAG, CXXFLAGS, COMPFLAGS, SOURCES);

    eval(command);
    fprintf("Compilation finished succesfully")
end
