{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "strings";
          version = "1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "julian.fleischer@fu-berlin.de";
        author = "Julian Fleischer";
        homepage = "";
        url = "";
        synopsis = "Functions for working with strings, including Text, ByteString, etc.";
        description = "Functions for working with strings, including Text, ByteString, etc.";
        buildType = "Simple";
      };
      components = {
        strings = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }