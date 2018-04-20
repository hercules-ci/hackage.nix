{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0.1";
        identifier = {
          name = "cqrs-sqlite3";
          version = "0.8.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Bardur Arantsson <bardur@scientician.net>";
        author = "Bardur Arantsson";
        homepage = "";
        url = "";
        synopsis = "SQLite3 backend for the cqrs package.";
        description = "SQLite3 backend for the cqrs package.";
        buildType = "Simple";
      };
      components = {
        cqrs-sqlite3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.conduit
            hsPkgs.cqrs
            hsPkgs.direct-sqlite
          ];
        };
      };
    }