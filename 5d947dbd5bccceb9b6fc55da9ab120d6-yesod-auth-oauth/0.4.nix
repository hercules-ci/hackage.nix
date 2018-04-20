{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      oauth-not-supported = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "yesod-auth-oauth";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "konn.jinro_at_gmail.com";
        author = "Hiromi ISHII";
        homepage = "";
        url = "";
        synopsis = "OAuth wrapper for yesod-auth";
        description = "OAuth client interface for yesod-auth.";
        buildType = "Simple";
      };
      components = {
        yesod-auth-oauth = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-auth
            hsPkgs.yesod
            hsPkgs.bytestring
            hsPkgs.http-enumerator
            hsPkgs.utf8-string
          ] ++ (if _flags.oauth-not-supported
            then [
              hsPkgs.authenticate-oauth
            ]
            else [ hsPkgs.authenticate ]);
        };
      };
    }