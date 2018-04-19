{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "spake2";
          version = "0.1.0";
        };
        license = "LicenseRef-Apache";
        copyright = "";
        maintainer = "Jonathan M. Lange <jml@mumak.net>";
        author = "";
        homepage = "https://github.com/jml/haskell-spake2#readme";
        url = "";
        synopsis = "Implementation of the SPAKE2 Password-Authenticated Key Exchange algorithm";
        description = "This library implements the SPAKE2 password-authenticated key exchange\n(\"PAKE\") algorithm. This allows two parties, who share a weak password, to\nsafely derive a strong shared secret (and therefore build an\nencrypted+authenticated channel).";
        buildType = "Simple";
      };
      components = {
        spake2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.bytestring
            hsPkgs.cryptonite
            hsPkgs.memory
          ];
        };
        exes = {
          haskell-spake2-interop-entrypoint = {
            depends  = [
              hsPkgs.base
              hsPkgs.protolude
              hsPkgs.base16-bytestring
              hsPkgs.cryptonite
              hsPkgs.optparse-applicative
              hsPkgs.spake2
            ];
          };
        };
        tests = {
          tasty = {
            depends  = [
              hsPkgs.base
              hsPkgs.protolude
              hsPkgs.cryptonite
              hsPkgs.QuickCheck
              hsPkgs.spake2
              hsPkgs.tasty
              hsPkgs.tasty-hspec
            ];
          };
        };
      };
    }