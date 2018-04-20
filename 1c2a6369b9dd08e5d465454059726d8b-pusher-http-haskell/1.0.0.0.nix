{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "pusher-http-haskell";
          version = "1.0.0.0";
        };
        license = "MIT";
        copyright = "(c) Will Sewell, 2016";
        maintainer = "me@willsewell.com";
        author = "Will Sewell";
        homepage = "https://github.com/pusher-community/pusher-http-haskell";
        url = "";
        synopsis = "Haskell client library for the Pusher HTTP API";
        description = "Functions that correspond to endpoints of the Pusher HTTP\nAPI. Messages can be triggered, and information about the\nchannel can be queried. Additionally there are functions\nfor authenticating users of private and presence channels.";
        buildType = "Simple";
      };
      components = {
        pusher-http-haskell = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.base16-bytestring
            hsPkgs.cryptohash
            hsPkgs.hashable
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.QuickCheck
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.pusher-http-haskell
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }