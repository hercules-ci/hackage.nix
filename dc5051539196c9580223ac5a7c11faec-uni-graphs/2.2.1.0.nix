{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "uni-graphs";
          version = "2.2.1.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Christian.Maeder@dfki.de";
        author = "uniform@informatik.uni-bremen.de";
        homepage = "http://www.informatik.uni-bremen.de/uniform/wb/";
        url = "";
        synopsis = "Graphs";
        description = "Graphs toolkit";
        buildType = "Simple";
      };
      components = {
        uni-graphs = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.uni-util
            hsPkgs.uni-events
            hsPkgs.uni-reactor
            hsPkgs.uni-htk
          ];
        };
      };
    }