{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      fastaes = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tls-extra";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-tls";
        url = "";
        synopsis = "TLS extra default values and helpers";
        description = "a set of extra definitions, default values and helpers for tls.";
        buildType = "Simple";
      };
      components = {
        tls-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.tls
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.cryptohash
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.crypto-api
            hsPkgs.cryptocipher
            hsPkgs.certificate
            hsPkgs.pem
            hsPkgs.text
            hsPkgs.time
          ] ++ pkgs.lib.optional (system.isLinux && _flags.fastaes && (system.isI386 || system.isX86_64)) hsPkgs.cipher-aes;
        };
        exes = {
          Tests = {
            depends  = optionals _flags.test [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.cprng-aes
            ] ++ pkgs.lib.optional (system.isLinux && _flags.fastaes) hsPkgs.cipher-aes;
          };
        };
      };
    }