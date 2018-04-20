{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "uni-events";
          version = "2.2.1.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Christian.Maeder@dfki.de";
        author = "uniform@informatik.uni-bremen.de";
        homepage = "http://www.informatik.uni-bremen.de/uniform/wb/";
        url = "";
        synopsis = "Event handling for the uniform workbench";
        description = "uni events";
        buildType = "Simple";
      };
      components = {
        uni-events = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.uni-util
          ];
        };
      };
    }