{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hgrep";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tim@utf8.me";
        author = "Tim Humphries";
        homepage = "https://github.com/thumphries/hgrep";
        url = "";
        synopsis = "Search Haskell source code from the command line";
        description = "Search Haskell source code from the command line.\n\nPowered by <https://hackage.haskell.org/package/ghc-exactprint ghc-exactprint>.";
        buildType = "Simple";
      };
      components = {
        hgrep = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-terminal
            hsPkgs.bytestring
            hsPkgs.ghc
            hsPkgs.ghc-exactprint
            hsPkgs.hscolour
            hsPkgs.lens
            hsPkgs.pcre-heavy
            hsPkgs.template-haskell
          ];
        };
        exes = {
          hgrep = {
            depends  = [
              hsPkgs.base
              hsPkgs.hgrep
              hsPkgs.ansi-terminal
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }