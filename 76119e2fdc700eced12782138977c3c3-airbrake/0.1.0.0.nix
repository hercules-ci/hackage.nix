{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "airbrake";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@joelt.io";
        author = "Joel Taylor";
        homepage = "https://github.com/joelteon/airbrake";
        url = "";
        synopsis = "An Airbrake notifier for Haskell";
        description = "Airbrake notifier.";
        buildType = "Simple";
      };
      components = {
        airbrake = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.exceptions
            hsPkgs.http-conduit
            hsPkgs.monad-control
            hsPkgs.network
            hsPkgs.semigroups
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.utf8-string
            hsPkgs.wai
          ];
        };
      };
    }