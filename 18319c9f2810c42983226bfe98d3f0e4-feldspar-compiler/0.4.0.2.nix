{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "feldspar-compiler";
          version = "0.4.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009-2011, ERICSSON AB";
        maintainer = "deva@inf.elte.hu";
        author = "Feldspar group,\nEotvos Lorand University Faculty of Informatics";
        homepage = "http://feldspar.inf.elte.hu/feldspar/";
        url = "";
        synopsis = "Compiler for the Feldspar language";
        description = "Feldspar (**F**unctional **E**mbedded **L**anguage for **DSP**\nand **PAR**allelism) is an embedded DSL for describing digital\nsignal processing algorithms.\nThis library (FeldsparCompiler) contains a prototype compiler\nthat supports C code generation from programs written in this\nlanguage both according to ANSI C and also targeted to a real\nDSP HW.";
        buildType = "Simple";
      };
      components = {
        feldspar-compiler = {
          depends  = [
            hsPkgs.feldspar-language
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.haskell-src-exts
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hint
            hsPkgs.MonadCatchIO-mtl
            hsPkgs.mtl
            hsPkgs.process
          ];
        };
        exes = {
          feldspar = {
            depends  = [
              hsPkgs.ansi-terminal
            ];
          };
        };
      };
    }