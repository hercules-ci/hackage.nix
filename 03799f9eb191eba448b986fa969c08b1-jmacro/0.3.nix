{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "jmacro";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gershomb@gmail.com";
        author = "Gershom Bazerman";
        homepage = "";
        url = "";
        synopsis = "QuasiQuotation library for programmatic generation of Javascript code.";
        description = "Javascript syntax, functional syntax, hygienic names, compile-time guarantees of syntactic correctness, limited typechecking.";
        buildType = "Simple";
      };
      components = {
        jmacro = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.pretty
            hsPkgs.safe
            hsPkgs.parsec
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.haskell-src-meta
            hsPkgs.bytestring
            hsPkgs.syb
            hsPkgs.pcre-light
          ];
        };
        exes = {
          jmacro = {
            depends  = [ hsPkgs.parseargs ];
          };
        };
      };
    }