{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi-mode-haskell";
          version = "0.17.1";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Yi developers <yi-devel@googlegroups.com>";
        author = "";
        homepage = "https://github.com/yi-editor/yi#readme";
        url = "";
        synopsis = "Yi editor haskell mode";
        description = "";
        buildType = "Simple";
      };
      components = {
        yi-mode-haskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.binary
            hsPkgs.data-default
            hsPkgs.filepath
            hsPkgs.microlens-platform
            hsPkgs.text
            hsPkgs.yi-core
            hsPkgs.yi-language
            hsPkgs.yi-rope
          ];
        };
      };
    }