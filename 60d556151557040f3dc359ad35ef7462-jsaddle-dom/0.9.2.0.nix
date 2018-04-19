{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "jsaddle-dom";
          version = "0.9.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
        author = "Hamish Mackenzie";
        homepage = "";
        url = "";
        synopsis = "DOM library that uses jsaddle to support both GHCJS and GHC";
        description = "Documentent Object Model (DOM) functions implemented using jsaddle.\nIt works with both GHCJS and GHC.";
        buildType = "Simple";
      };
      components = {
        jsaddle-dom = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.jsaddle
            hsPkgs.lens
          ] ++ optionals compiler.isGhcjs [
            hsPkgs.ghcjs-base
            hsPkgs.ghcjs-prim
            hsPkgs.ghc-prim
          ];
        };
      };
    }