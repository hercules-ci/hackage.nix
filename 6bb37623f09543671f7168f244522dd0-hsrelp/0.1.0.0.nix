{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsrelp";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Denis Afonin";
        maintainer = "Denis Afonin <verrens@yandex.ru>";
        author = "Denis Afonin <verrens@yandex.ru>";
        homepage = "https://github.com/verrens/hsrelp";
        url = "";
        synopsis = "RELP (Reliable Event Logging Protocol) server implementation";
        description = "The specification of the RELP protocol:\n<http://www.rsyslog.com/doc/relp.html>";
        buildType = "Simple";
      };
      components = {
        hsrelp = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.attoparsec
          ];
        };
      };
    }