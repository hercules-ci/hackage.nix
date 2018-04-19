{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "helm";
          version = "0.7.0";
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
            hsPkgs.filepath
            hsPkgs.sdl2
            hsPkgs.text
            hsPkgs.time
            hsPkgs.random
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.cpu
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        tests = {
          helm-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.cairo
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.time
              hsPkgs.elerea
              hsPkgs.sdl2
            ];
          };
        };
      };
    }