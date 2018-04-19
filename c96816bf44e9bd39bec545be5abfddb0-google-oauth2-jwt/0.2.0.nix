{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "google-oauth2-jwt";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016-2017 - Michel Boucey";
        maintainer = "michel.boucey@cybervisible.fr";
        author = "Michel Boucey";
        homepage = "https://github.com/MichelBoucey/google-oauth2-jwt";
        url = "";
        synopsis = "Get a signed JWT for Google Service Accounts";
        description = "This library implements the creation of the\nsigned JWT for Google Service Accounts.";
        buildType = "Simple";
      };
      components = {
        google-oauth2-jwt = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.HsOpenSSL
            hsPkgs.RSA
            hsPkgs.text
            hsPkgs.unix-time
          ];
        };
      };
    }