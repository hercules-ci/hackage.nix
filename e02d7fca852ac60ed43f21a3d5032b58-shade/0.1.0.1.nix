{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "shade";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Frederik Hanghøj Iversen";
        maintainer = "fhi.1990@gmail.com";
        author = "Frederik Hanghøj Iversen";
        homepage = "https://github.com/fredefox/shade#readme";
        url = "";
        synopsis = "A control structure used to combine heterogenous types with delayed effects.";
        description = "Please see the readme.";
        buildType = "Simple";
      };
      components = {
        shade = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          shade = {
            depends  = [
              hsPkgs.base
              hsPkgs.shade
            ];
          };
        };
      };
    }