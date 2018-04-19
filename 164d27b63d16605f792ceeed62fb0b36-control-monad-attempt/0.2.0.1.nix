{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      transformers_02 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "control-monad-attempt";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman, Nicolas Pouillard";
        homepage = "http://github.com/snoyberg/control-monad-attempt";
        url = "";
        synopsis = "Monad transformer for attempt.";
        description = "This package uses the transformers library.";
        buildType = "Simple";
      };
      components = {
        control-monad-attempt = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.attempt
          ] ++ [ hsPkgs.transformers ];
        };
      };
    }