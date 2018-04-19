{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-src-exts";
          version = "1.14.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Niklas Broberg <niklas.broberg@chalmers.se>";
        author = "Niklas Broberg";
        homepage = "https://github.com/haskell-suite/haskell-src-exts";
        url = "";
        synopsis = "Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer";
        description = "Haskell-Source with Extensions (HSE, haskell-src-exts)\nis an extension of the standard haskell-src package,\nand handles most registered syntactic extensions to Haskell, including:\n\n* Multi-parameter type classes with functional dependencies\n\n* Indexed type families (including associated types)\n\n* Empty data declarations\n\n* GADTs\n\n* Implicit parameters\n\n* Template Haskell\n\nand a few more. All extensions implemented in GHC are supported.\nApart from these standard extensions,\nit also handles regular patterns as per the HaRP extension\nas well as HSX-style embedded XML syntax.";
        buildType = "Custom";
      };
      components = {
        haskell-src-exts = {
          depends  = [
            hsPkgs.array
            hsPkgs.pretty
            hsPkgs.cpphs
          ] ++ [ hsPkgs.base ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-src-exts
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-hunit
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
      };
    }