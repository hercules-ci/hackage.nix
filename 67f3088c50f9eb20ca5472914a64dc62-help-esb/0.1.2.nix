{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "help-esb";
          version = "0.1.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "alex.martin@help.com";
        author = "Alexander Martin";
        homepage = "https://github.com/helpdotcom/help-esb.hs";
        url = "";
        synopsis = "A Haskell client for the Help.com team's ESB.";
        description = "A Haskell client for the Help.com team's ESB.";
        buildType = "Simple";
      };
      components = {
        help-esb = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.text
            hsPkgs.MissingH
            hsPkgs.uuid
            hsPkgs.aeson
            hsPkgs.bytestring
          ];
        };
      };
    }