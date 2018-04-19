{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "smallcheck-series";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "j@dannynavarro.net";
        author = "Danny Navarro";
        homepage = "https://github.com/jdnavarro/smallcheck-series";
        url = "";
        synopsis = "Extra SmallCheck series and utilities";
        description = "Orphan @Serial@ instances and utilities to create and manipulate\n@Series@ for common types.";
        buildType = "Simple";
      };
      components = {
        smallcheck-series = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.logict
            hsPkgs.smallcheck
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.doctest
            ];
          };
        };
      };
    }