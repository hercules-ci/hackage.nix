{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "postgresql-simple";
          version = "0.1.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 MailRank, Inc.\n(c) 2011 Leon P Smith";
        maintainer = "Leon P Smith <leon@melding-monads.com>";
        author = "Bryan O'Sullivan, Leon P Smith";
        homepage = "";
        url = "";
        synopsis = "Mid-Level PostgreSQL client library";
        description = "Mid-Level PostgreSQL client library, forked from mysql-simple.";
        buildType = "Simple";
      };
      components = {
        postgresql-simple = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.blaze-textual
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.postgresql-libpq
            hsPkgs.old-locale
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.vector
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.base16-bytestring
              hsPkgs.bytestring
              hsPkgs.cryptohash
              hsPkgs.HUnit
              hsPkgs.postgresql-simple
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }