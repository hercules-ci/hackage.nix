{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      exe = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SHA";
          version = "1.5.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Wick <awick@galois.com>";
        author = "Adam Wick <awick@galois.com>, Brian Lewis <brian@lorf.org>";
        homepage = "";
        url = "";
        synopsis = "Implementations of the SHA suite of message digest functions";
        description = "This library implements the SHA suite of message digest functions,\naccording to NIST FIPS 180-2 (with the SHA-224 addendum), as well\nas the SHA-based HMAC routines. The functions have been tested\nagainst most of the NIST and RFC test vectors for the various\nfunctions. While some attention has been paid to performance,\nthese do not presently reach the speed of well-tuned libraries,\nlike OpenSSL.";
        buildType = "Simple";
      };
      components = {
        SHA = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.array
          ];
        };
        exes = {
          test_sha = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.array
            ] ++ optionals (!(!_flags.test)) [
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
          sha1 = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.array
            ] ++ pkgs.lib.optional (!(!_flags.exe)) hsPkgs.directory;
          };
          sha384 = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.array
            ] ++ pkgs.lib.optional (!(!_flags.exe)) hsPkgs.directory;
          };
        };
      };
    }