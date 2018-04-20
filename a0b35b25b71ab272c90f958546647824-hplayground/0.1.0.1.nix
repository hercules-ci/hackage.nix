{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      haste-inst = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hplayground";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto Gómez Corona";
        homepage = "https://github.com/agocorona/hplayground";
        url = "";
        synopsis = "a client-side haskell framework that compiles to javascript with the haste compiler";
        description = "create and compose reactive widgets in the client side using idiomatic haskell.\nFormlets with reactive effects in the client side";
        buildType = "Simple";
      };
      components = {
        hplayground = {
          depends  = if _flags.haste-inst
            then [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.monads-tf
              hsPkgs.haste-lib
              hsPkgs.haste-perch
            ]
            else [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.monads-tf
              hsPkgs.haste-compiler
              hsPkgs.haste-perch
            ];
        };
      };
    }