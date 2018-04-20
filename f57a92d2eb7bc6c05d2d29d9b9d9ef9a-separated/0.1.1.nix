{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "separated";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/data61/separated";
        url = "";
        synopsis = "A data type with elements separated by values";
        description = "A data type with elements separated by values";
        buildType = "Custom";
      };
      components = {
        separated = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.bifunctors
            hsPkgs.papa
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.QuickCheck
              hsPkgs.template-haskell
              hsPkgs.parsec
            ];
          };
        };
      };
    }