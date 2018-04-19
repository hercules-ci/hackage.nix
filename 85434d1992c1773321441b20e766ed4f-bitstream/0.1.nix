{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bitstream";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <pho at cielonegro dot org>";
        author = "PHO <pho at cielonegro dot org>";
        homepage = "http://cielonegro.org/Bitstream.html";
        url = "";
        synopsis = "Fast, packed, strict and lazy bit streams with stream fusion";
        description = "Fast, packed, strict and lazy bit vectors with stream\nfusion. This is like @bytestring@ but stores bits instead of\nbytes.\nNOTE: GHC 7.0.1 fails to fuse almost every cases of bitstream\nfusion, producing very large and not-so-fast object code. See:\n<http://hackage.haskell.org/trac/ghc/ticket/4397>";
        buildType = "Simple";
      };
      components = {
        bitstream = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.bytestring
            hsPkgs.vector
          ];
        };
        tests = {
          test-strict-bitstream = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.bytestring
              hsPkgs.vector
            ];
          };
          test-lazy-bitstream = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.bytestring
              hsPkgs.vector
            ];
          };
        };
      };
    }