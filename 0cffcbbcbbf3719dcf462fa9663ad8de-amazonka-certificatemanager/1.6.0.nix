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
        name = "amazonka-certificatemanager";
        version = "1.6.0";
      };
      license = "MPL-2.0";
      copyright = "Copyright (c) 2013-2018 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay+amazonka@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Certificate Manager SDK.";
      description = "The types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information, sending requests,\nand receiving responses.\n\nLenses are used for constructing and manipulating types,\ndue to the depth of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CertificateManager\" or <https://aws.amazon.com/documentation/ the AWS documentation>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "amazonka-certificatemanager" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-certificatemanager-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-certificatemanager)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }