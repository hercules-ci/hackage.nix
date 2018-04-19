{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cipher-des";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-crypto-cipher";
        url = "";
        synopsis = "DES and 3DES primitives";
        description = "DES and 3DES primitives";
        buildType = "Simple";
      };
      components = {
        cipher-des = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.byteable
            hsPkgs.crypto-cipher-types
            hsPkgs.securemem
            hsPkgs.cereal
          ];
        };
        tests = {
          test-cipher-des = {
            depends  = [
              hsPkgs.base
              hsPkgs.cipher-des
              hsPkgs.crypto-cipher-types
              hsPkgs.crypto-cipher-tests
              hsPkgs.bytestring
              hsPkgs.byteable
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
        benchmarks = {
          bench-cipher-des = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cipher-des
              hsPkgs.crypto-cipher-types
              hsPkgs.crypto-cipher-benchmarks
              hsPkgs.criterion
              hsPkgs.mtl
            ];
          };
        };
      };
    }