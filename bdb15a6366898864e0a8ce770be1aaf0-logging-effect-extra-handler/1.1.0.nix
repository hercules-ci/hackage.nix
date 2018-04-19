{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "logging-effect-extra-handler";
          version = "1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Jason Shipman";
        author = "Jason Shipman";
        homepage = "https://github.com/jship/logging-effect-extra#readme";
        url = "";
        synopsis = "Handy logging handler combinators";
        description = "Handy logging handler combinators.";
        buildType = "Simple";
      };
      components = {
        logging-effect-extra-handler = {
          depends  = [
            hsPkgs.base
            hsPkgs.logging-effect
            hsPkgs.wl-pprint-text
            hsPkgs.exceptions
            hsPkgs.time
          ];
        };
        exes = {
          iso8601-handler = {
            depends  = [
              hsPkgs.base
              hsPkgs.logging-effect
              hsPkgs.wl-pprint-text
              hsPkgs.logging-effect-extra-handler
            ];
          };
          iso8601plus-handler = {
            depends  = [
              hsPkgs.base
              hsPkgs.logging-effect
              hsPkgs.wl-pprint-text
              hsPkgs.logging-effect-extra-handler
            ];
          };
          rfc822-handler = {
            depends  = [
              hsPkgs.base
              hsPkgs.logging-effect
              hsPkgs.wl-pprint-text
              hsPkgs.logging-effect-extra-handler
            ];
          };
          route-handler = {
            depends  = [
              hsPkgs.base
              hsPkgs.logging-effect
              hsPkgs.wl-pprint-text
              hsPkgs.logging-effect-extra-handler
            ];
          };
          route-handler-with-iso8601 = {
            depends  = [
              hsPkgs.base
              hsPkgs.logging-effect
              hsPkgs.wl-pprint-text
              hsPkgs.logging-effect-extra-handler
            ];
          };
        };
      };
    }