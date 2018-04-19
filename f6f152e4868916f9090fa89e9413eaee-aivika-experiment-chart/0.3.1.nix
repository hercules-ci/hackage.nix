{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "aivika-experiment-chart";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012-2013. David Sorokin <david.sorokin@gmail.com>";
        maintainer = "David Sorokin <david.sorokin@gmail.com>";
        author = "David Sorokin";
        homepage = "http://github.com/dsorokin/aivika-experiment-chart";
        url = "";
        synopsis = "Simulation experiments with charting for the Aivika library";
        description = "This package complements the Aivika and Aivika Experiment packages with\ncharting capabilites. Now the simulation results can be represented\nas charts.\n\nIt was intentionally made a separate package as it has heavy dependencies\non Haskell Charts, Cairo and GTK.\n";
        buildType = "Simple";
      };
      components = {
        aivika-experiment-chart = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.Chart
            hsPkgs.split
            hsPkgs.data-accessor
            hsPkgs.colour
            hsPkgs.aivika
            hsPkgs.aivika-experiment
          ];
        };
      };
    }