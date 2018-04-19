{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "string-conversions";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "shahn@joyridelabs.de";
        author = "Sönke Hahn";
        homepage = "";
        url = "";
        synopsis = "Simplifies dealing with different types for strings";
        description = "Provides a simple type class for converting values\nof different string types\ninto values of other string types.";
        buildType = "Simple";
      };
      components = {
        string-conversions = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.utf8-string
          ];
        };
      };
    }