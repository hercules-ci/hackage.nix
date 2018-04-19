{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "sequence";
          version = "0.9.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "atzeus@gmail.com";
        author = "Atze van der Ploeg";
        homepage = "https://github.com/atzeus/sequence";
        url = "";
        synopsis = "A type class for sequences and various sequence data structures.";
        description = "A type class for sequences and various sequence data structures.";
        buildType = "Simple";
      };
      components = {
        sequence = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }