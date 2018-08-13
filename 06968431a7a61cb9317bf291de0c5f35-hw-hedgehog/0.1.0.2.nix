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
        name = "hw-hedgehog";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2017-2018 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/hw-hedgehog#readme";
      url = "";
      synopsis = "Extra hedgehog functionality";
      description = "Extra hedgehog functionality.";
      buildType = "Simple";
    };
    components = {
      "hw-hedgehog" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hedgehog)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "hw-hedgehog-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hw-hedgehog)
          ];
        };
      };
    };
  }