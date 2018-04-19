{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-src-exts";
          version = "1.18.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Niklas Broberg <niklas.broberg@chalmers.se>, Roman Cheplyaka <roma@ro-che.info>";
        author = "Niklas Broberg";
        homepage = "https://github.com/haskell-suite/haskell-src-exts";
        url = "";
        synopsis = "Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer";
        description = "Haskell-Source with Extensions (HSE, haskell-src-exts)\nis a standalone parser for Haskell. In addition to\nstandard Haskell, all extensions implemented in GHC are supported.\n\nApart from these standard extensions,\nit also handles regular patterns as per the HaRP extension\nas well as HSX-style embedded XML syntax.";
        buildType = "Simple";
      };
      components = {
        haskell-src-exts = {
          depends  = [
            hsPkgs.array
            hsPkgs.pretty
            hsPkgs.cpphs
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.haskell-src-exts
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-golden
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.pretty-show
            ];
          };
        };
      };
    }