{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "really-simple-xml-parser";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "ckkashyap@gmail.com";
        author = "CK Kashyap";
        homepage = "http://website-ckkashyap.rhcloud.com";
        url = "";
        synopsis = "A really simple XML parser";
        description = "A really simple and trivial XML parser using the Parsec library";
        buildType = "Simple";
      };
      components = {
        really-simple-xml-parser = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }