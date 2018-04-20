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
          name = "validation";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Morris, Nick Partridge";
        maintainer = "Tony Morris, Nick Partridge";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>, Nick Partridge";
        homepage = "https://github.com/tonymorris/validation";
        url = "";
        synopsis = "A data-type like Either but with an accumulating Applicative";
        description = "A data-type like Either but with an accumulating Applicative";
        buildType = "Custom";
      };
      components = {
        validation = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.bifunctors
            hsPkgs.lens
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
            ];
          };
        };
      };
    }