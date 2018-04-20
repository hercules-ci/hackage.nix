{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build-examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nfc";
          version = "0.1.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "John Galt <jgalt@centromere.net>";
        author = "";
        homepage = "https://github.com/centromere/nfc#readme";
        url = "";
        synopsis = "libnfc bindings";
        description = "nfc is a set of bindings to libnfc";
        buildType = "Simple";
      };
      components = {
        nfc = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = [ pkgs.nfc ];
        };
        exes = {
          print-mifare-uid-forever = {
            depends  = [
              hsPkgs.base
              hsPkgs.base16-bytestring
              hsPkgs.bytestring
              hsPkgs.nfc
            ];
          };
        };
      };
    }