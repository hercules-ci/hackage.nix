{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "motor-diagrams";
        version = "0.3.0";
      };
      license = "MPL-2.0";
      copyright = "Oskar Wickström";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "";
      url = "";
      synopsis = "Generate state diagrams from Motor FSM typeclasses";
      description = "Generate state diagrams from Motor FSM typeclasses.";
      buildType = "Simple";
    };
    components = {
      "motor-diagrams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.motor)
          (hsPkgs.motor-reflection)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.motor)
            (hsPkgs.motor-reflection)
            (hsPkgs.motor-diagrams)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
      };
    };
  }