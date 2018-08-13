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
        name = "observable";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Murat Kasimov";
      maintainer = "Murat Kasimov <iokasimov.m@gmail.com>";
      author = "Murat Kasimov";
      homepage = "https://github.com/iokasimov/observable";
      url = "";
      synopsis = "Make your action to be observable and listen events from them.";
      description = "Make your action to be observable and listen events from them.";
      buildType = "Simple";
    };
    components = {
      "observable" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }