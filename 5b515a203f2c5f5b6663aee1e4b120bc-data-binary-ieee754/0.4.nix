{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-binary-ieee754";
          version = "0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin";
        homepage = "";
        url = "";
        synopsis = "Parser/Serialiser for IEEE-754 floating-point values";
        description = "Convert Float and Decimal values to/from raw octets.";
        buildType = "Simple";
      };
      components = {
        data-binary-ieee754 = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
          ];
        };
      };
    }