{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      ghc7 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "yesod-auth-oauth";
          version = "0.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hiromi Ishii";
        author = "Hiromi Ishii";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "OAuth Authentication for Yesod.";
        description = "Authentication for Yesod.";
        buildType = "Simple";
      };
      components = {
        yesod-auth-oauth = {
          depends  = [
            hsPkgs.authenticate-oauth
            hsPkgs.bytestring
            hsPkgs.yesod-core
            hsPkgs.yesod-auth
            hsPkgs.text
            hsPkgs.hamlet
            hsPkgs.conduit
            hsPkgs.yesod-form
          ] ++ [ hsPkgs.base ];
        };
      };
    }