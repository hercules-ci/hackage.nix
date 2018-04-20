{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HMarkov";
          version = "1.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Sam Raker";
        maintainer = "sam.raker@gmail.com";
        author = "Sam Raker";
        homepage = "https://github.com/swizzard/HMarkov#readme";
        url = "";
        synopsis = "Markov-generated sequences";
        description = "Sequences generated by trained Markov models";
        buildType = "Simple";
      };
      components = {
        HMarkov = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.vector
          ];
        };
        tests = {
          HMarkov-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.HMarkov
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.vector
            ];
          };
        };
      };
    }