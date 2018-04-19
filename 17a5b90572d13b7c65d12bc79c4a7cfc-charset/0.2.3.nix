{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "charset";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Edward Kmett 2010";
        maintainer = "ekmett@gmail.com";
        author = "Edward Kmett";
        homepage = "http://github.com/ekmett/charset";
        url = "";
        synopsis = "Fast unicode character sets based on complemented PATRICIA tries";
        description = "Fast unicode character sets based on complemented PATRICIA tries";
        buildType = "Simple";
      };
      components = {
        charset = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
          ];
        };
      };
    }