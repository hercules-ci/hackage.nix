{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "antisplice";
          version = "0.8.0.1";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "marvin.cohrs@gmx.net";
        author = "Marvin Cohrs";
        homepage = "";
        url = "";
        synopsis = "An engine for text-based dungeons.";
        description = "An engine for text-based dungeons.";
        buildType = "Simple";
      };
      components = {
        antisplice = {
          depends  = [
            hsPkgs.base
            hsPkgs.chatty
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.haskeline
            hsPkgs.time
          ];
        };
      };
    }