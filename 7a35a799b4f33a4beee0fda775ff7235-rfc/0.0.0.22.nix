{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      browser = false;
      development = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rfc";
          version = "0.0.0.22";
        };
        license = "BSD-3-Clause";
        copyright = "(c)2018 Robert Fischer";
        maintainer = "smokejumperit+rfc@gmail.com";
        author = "Robert Fischer";
        homepage = "https://github.com/RobertFischer/rfc#README.md";
        url = "";
        synopsis = "Robert Fischer's Common library";
        description = "An enhanced Prelude and various utilities for Aeson, Servant, PSQL, and Redis that Robert Fischer uses.";
        buildType = "Simple";
      };
      components = {
        rfc = {
          depends  = ([
            hsPkgs.base
            hsPkgs.base
            hsPkgs.classy-prelude
            hsPkgs.uuid-types
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.string-conversions
            hsPkgs.resource-pool
            hsPkgs.data-default
            hsPkgs.servant-blaze
            hsPkgs.blaze-html
            hsPkgs.url
            hsPkgs.lens
            hsPkgs.http-types
            hsPkgs.http-api-data
            hsPkgs.time-units
            hsPkgs.aeson-diff
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.bifunctors
            hsPkgs.lifted-async
            hsPkgs.unliftio
            hsPkgs.unliftio-core
            hsPkgs.monad-control
            hsPkgs.freer-simple
            hsPkgs.natural-transformation
          ] ++ optionals _flags.browser [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.miso
            hsPkgs.servant
          ]) ++ optionals (!_flags.browser) [
            hsPkgs.servant-server
            hsPkgs.servant
            hsPkgs.servant-docs
            hsPkgs.wai
            hsPkgs.aeson
            hsPkgs.wai-extra
            hsPkgs.wai-cors
            hsPkgs.postgresql-simple
            hsPkgs.hedis
            hsPkgs.simple-logger
            hsPkgs.temporary
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.wreq
            hsPkgs.servant-swagger
            hsPkgs.swagger2
            hsPkgs.markdown
            hsPkgs.servant-client
            hsPkgs.binary
          ];
        };
      };
    }