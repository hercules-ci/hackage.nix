{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "synthesizer-filter";
          version = "0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
        url = "";
        synopsis = "Audio signal processing coded in Haskell: Filter networks";
        description = "In this package we experiment with various ways\nof representing filter networks.\nHowever, none of them is mature so far.";
        buildType = "Simple";
      };
      components = {
        synthesizer-filter = {
          depends  = [
            hsPkgs.synthesizer-core
            hsPkgs.transformers
            hsPkgs.numeric-prelude
            hsPkgs.numeric-quest
            hsPkgs.utility-ht
            hsPkgs.containers
            hsPkgs.base
          ];
        };
      };
    }