{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "insert-ordered-containers";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/insert-ordered-containers#readme";
        url = "";
        synopsis = "Associative containers retaining insertion order for traversals.";
        description = "Associative containers retaining insertion order for traversals.\n\nThe implementation is based on `unordered-containers`.";
        buildType = "Simple";
      };
      components = {
        insert-ordered-containers = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.base-compat
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.semigroupoids
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          ins-ord-containers-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.base-compat
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.semigroupoids
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.base
              hsPkgs.insert-ordered-containers
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }