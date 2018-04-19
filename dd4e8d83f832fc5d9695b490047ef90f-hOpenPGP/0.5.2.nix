{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hOpenPGP";
          version = "0.5.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "2012, Clint Adams";
        maintainer = "Clint Adams <clint@debian.org>";
        author = "Clint Adams";
        homepage = "http://floss.scru.org/hOpenPGP/";
        url = "";
        synopsis = "native Haskell implementation of OpenPGP (RFC4880)";
        description = "native Haskell implementation of OpenPGP (RFC4880)";
        buildType = "Simple";
      };
      components = {
        hOpenPGP = {
          depends  = [
            hsPkgs.asn1-data
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.bzlib
            hsPkgs.cereal
            hsPkgs.cereal-conduit
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.cryptocipher
            hsPkgs.cryptohash
            hsPkgs.mtl
            hsPkgs.openpgp-asciiarmor
            hsPkgs.split
            hsPkgs.time
            hsPkgs.zlib
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.asn1-data
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.bzlib
              hsPkgs.cereal
              hsPkgs.cereal-conduit
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.cryptocipher
              hsPkgs.cryptohash
              hsPkgs.mtl
              hsPkgs.openpgp-asciiarmor
              hsPkgs.split
              hsPkgs.time
              hsPkgs.zlib
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.exception-transformers
              hsPkgs.resourcet
            ];
          };
        };
      };
    }