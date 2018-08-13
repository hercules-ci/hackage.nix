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
      specVersion = "1.6";
      identifier = {
        name = "happstack-jmacro";
        version = "7.0.12.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Support for using JMacro with Happstack";
      description = "JMacro provides QuasiQuote support for embedding javascript in Haskell source. This module provides some helper functions for serving the generated javascript via Happstack";
      buildType = "Simple";
    };
    components = {
      "happstack-jmacro" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.digest)
          (hsPkgs.happstack-server)
          (hsPkgs.jmacro)
          (hsPkgs.wl-pprint-text)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }