{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "email";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Johannes Weiss <weiss@tux4u.de>";
        author = "Johannes Weiss <weiss@tux4u.de>, Dirk Spoeri,\nGero Kriependorf";
        homepage = "";
        url = "";
        synopsis = "Sending eMail in Haskell made easy";
        description = "A simple and small library for sending eMail.";
        buildType = "Simple";
      };
      components = {
        email = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.HaskellNet
            hsPkgs.encoding
            hsPkgs.process
            hsPkgs.hsemail
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.time
            hsPkgs.parsec
            hsPkgs.array
            hsPkgs.ghc
          ];
        };
      };
    }