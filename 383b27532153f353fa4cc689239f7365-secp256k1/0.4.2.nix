{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "secp256k1";
          version = "0.4.2";
        };
        license = "MIT";
        copyright = "(c) 2013 Pieter Wuille";
        maintainer = "Jean-Pierre Rupp <root@haskoin.com>";
        author = "Pieter Wuille";
        homepage = "http://github.com/haskoin/secp256k1#readme";
        url = "";
        synopsis = "secp256k1 bindings for Haskell";
        description = "Please see README.md";
        buildType = "Custom";
      };
      components = {
        secp256k1 = {
          depends  = [
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.entropy
            hsPkgs.largeword
            hsPkgs.mtl
            hsPkgs.QuickCheck
            hsPkgs.string-conversions
          ];
        };
        tests = {
          secp256k1-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.base16-bytestring
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.cryptohash
              hsPkgs.entropy
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.secp256k1
              hsPkgs.string-conversions
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }