{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      aeson = true;
      semigroupoids = true;
      semirings = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "quickcheck-classes";
        version = "0.4.11.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/quickcheck-classes#readme";
      url = "";
      synopsis = "QuickCheck common typeclasses";
      description = "This library provides QuickCheck properties to ensure\nthat typeclass instances adhere to the set of laws that\nthey are supposed to. There are other libraries that do\nsimilar things, such as `genvalidity-hspec` and `checkers`.\nThis library differs from other solutions by not introducing\nany new typeclasses that the user needs to learn.";
      buildType = "Simple";
    };
    components = {
      "quickcheck-classes" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.QuickCheck)
          (hsPkgs.transformers)
          (hsPkgs.primitive)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.tagged)
        ] ++ pkgs.lib.optional (_flags.aeson) (hsPkgs.aeson)) ++ pkgs.lib.optional (_flags.semigroupoids) (hsPkgs.semigroupoids)) ++ pkgs.lib.optional (_flags.semirings) (hsPkgs.semirings);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.quickcheck-classes)
            (hsPkgs.QuickCheck)
            (hsPkgs.primitive)
            (hsPkgs.vector)
            (hsPkgs.transformers)
            (hsPkgs.tagged)
          ] ++ pkgs.lib.optional (_flags.aeson) (hsPkgs.aeson);
        };
      };
    };
  }