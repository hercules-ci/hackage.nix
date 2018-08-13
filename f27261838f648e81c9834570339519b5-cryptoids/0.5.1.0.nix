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
        name = "cryptoids";
        version = "0.5.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregor Kleen <aethoago@141.li>";
      author = "Gregor Kleen <aethoago@141.li>";
      homepage = "";
      url = "";
      synopsis = "Reversable and secure encoding of object ids as a bytestring";
      description = "";
      buildType = "Simple";
    };
    components = {
      "cryptoids" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cryptoids-class)
          (hsPkgs.cryptoids-types)
          (hsPkgs.cryptonite)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.memory)
        ];
      };
    };
  }