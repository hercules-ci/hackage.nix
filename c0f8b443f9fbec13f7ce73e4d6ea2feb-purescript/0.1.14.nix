{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "purescript";
          version = "0.1.14";
        };
        license = "MIT";
        copyright = "(c) Phil Freeman 2013";
        maintainer = "Phil Freeman <paf31@cantab.net>";
        author = "Phil Freeman <paf31@cantab.net>";
        homepage = "";
        url = "";
        synopsis = "PureScript Programming Language Compiler";
        description = "A small compile-to-JS language with extensible records and type-safe blocks";
        buildType = "Simple";
      };
      components = {
        purescript = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.cmdtheline
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.parsec
            hsPkgs.utf8-string
          ];
        };
        exes = {
          psc = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdtheline
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.parsec
              hsPkgs.utf8-string
              hsPkgs.syb
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.parsec
              hsPkgs.utf8-string
              hsPkgs.purescript
            ];
          };
        };
      };
    }