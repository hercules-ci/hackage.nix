{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hw-fingertree-strict";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 John Ky; 2006 Ross Paterson, Ralf Hinze";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "https://github.com/githubuser/hw-fingertree-strict#readme";
        url = "";
        synopsis = "Generic strict finger-tree structure";
        description = "A general sequence representation with arbitrary\nannotations, for use as a base for implementations of\nvarious collection types, with examples, as described\nin section 4 of\n\n* Ralf Hinze and Ross Paterson,\n\\\"Finger trees: a simple general-purpose data structure\\\",\n/Journal of Functional Programming/ 16:2 (2006) pp 197-217.\n<http://staff.city.ac.uk/~ross/papers/FingerTree.html>\n\nFor a tuned sequence type, see @Data.Sequence@ in the\n@containers@ package, which is a specialization of\nthis structure.";
        buildType = "Simple";
      };
      components = {
        hw-fingertree-strict = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          hw-fingertree-strict-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hedgehog
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.hw-fingertree-strict
              hsPkgs.hw-hspec-hedgehog
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }