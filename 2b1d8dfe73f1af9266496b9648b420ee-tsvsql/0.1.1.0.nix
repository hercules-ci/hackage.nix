{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tsvsql";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dhchoi@gmail.com";
        author = "Daniel Choi";
        homepage = "https://github.com/danchoi/tsvsql";
        url = "";
        synopsis = "Template tsv into SQL";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          tsvsql = {
            depends  = [
              hsPkgs.base
              hsPkgs.unordered-containers
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
              hsPkgs.attoparsec
            ];
          };
        };
      };
    }