{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      openssl = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mysql-haskell";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Winterland";
        maintainer = "winterland1989@gmail.com";
        author = "winterland1989";
        homepage = "https://github.com/winterland1989/mysql-haskell";
        url = "";
        synopsis = "pure haskell MySQL driver";
        description = "pure haskell MySQL driver";
        buildType = "Simple";
      };
      components = {
        mysql-haskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.monad-loops
            hsPkgs.network
            hsPkgs.io-streams
            hsPkgs.tcp-streams
            hsPkgs.wire-streams
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.cryptonite
            hsPkgs.memory
            hsPkgs.time
            hsPkgs.scientific
            hsPkgs.bytestring-lexing
            hsPkgs.blaze-textual
            hsPkgs.word24
          ] ++ pkgs.lib.optional _flags.openssl hsPkgs.HsOpenSSL;
          libs = if _flags.openssl && (system.isWindows || system.isWindows)
            then [ pkgs.eay32 pkgs.ssl32 ]
            else [ pkgs.crypto ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.mysql-haskell
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.io-streams
              hsPkgs.time
            ];
          };
        };
      };
    }