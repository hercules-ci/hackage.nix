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
        name = "halves";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brian@brianmckenna.org";
      author = "Brian McKenna";
      homepage = "";
      url = "";
      synopsis = "Splitting/combining data structures to/from halves, quarters, eighths";
      description = "Splitting/combining data structures to/from halves, quarters, eighths.";
      buildType = "Simple";
    };
    components = {
      "halves" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "props" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.halves)
            (hsPkgs.hedgehog)
          ];
        };
      };
    };
  }