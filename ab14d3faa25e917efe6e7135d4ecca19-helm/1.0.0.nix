{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "helm";
          version = "1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2013-2014, Zack Corr";
        maintainer = "Zack Corr <zack@z0w0.me>";
        author = "Zack Corr";
        homepage = "http://github.com/switchface/helm";
        url = "";
        synopsis = "A functionally reactive game engine.";
        description = "A functionally reactive game engine, with headgear to protect you\nfrom the headache of game development provided.";
        buildType = "Simple";
      };
      components = {
        helm = {
          depends  = [
            hsPkgs.base
            hsPkgs.cairo
            hsPkgs.pango
            hsPkgs.containers
            hsPkgs.elerea
            hsPkgs.sdl2
            hsPkgs.linear
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.transformers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        exes = {
          helm-example-flappy = {
            depends  = [
              hsPkgs.base
              hsPkgs.linear
              hsPkgs.random
              hsPkgs.helm
            ];
          };
        };
        tests = {
          helm-spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.helm
            ];
          };
        };
      };
    }