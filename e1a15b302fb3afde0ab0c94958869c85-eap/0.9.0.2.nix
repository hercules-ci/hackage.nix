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
        name = "eap";
        version = "0.9.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Erick Gonzalez";
      maintainer = "erick@codemonkeylabs.de";
      author = "Erick Gonzalez";
      homepage = "https://gitlab.com/codemonkeylabs/eap#readme";
      url = "";
      synopsis = "Extensible Authentication Protocol (EAP)";
      description = "This module provides types and on the wire de/coding of EAP packets as per RFC 3748";
      buildType = "Simple";
    };
    components = {
      "eap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.pretty-hex)
        ];
      };
    };
  }