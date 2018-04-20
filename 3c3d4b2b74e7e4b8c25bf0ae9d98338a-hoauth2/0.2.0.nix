{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hoauth2";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Haisheng,Wu";
        maintainer = "freizl@gmail.com";
        author = "Haisheng Wu";
        homepage = "freizl.github.com";
        url = "";
        synopsis = "hoauth2";
        description = "Haskell OAuth2 authentication.\n\nTested following services\n\n* google web oauth: <https://developers.google.com/accounts/docs/OAuth2WebServer>\n\n* weibo oauth2: <http://open.weibo.com/wiki/Oauth2>";
        buildType = "Simple";
      };
      components = {
        hoauth2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-conduit
            hsPkgs.conduit
            hsPkgs.aeson
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.http-types
          ];
        };
      };
    }