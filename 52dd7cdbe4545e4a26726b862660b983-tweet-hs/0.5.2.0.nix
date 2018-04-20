{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      llvm-fast = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tweet-hs";
          version = "0.5.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Vanessa McHale";
        maintainer = "tmchale@wisc.edu";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/command-line-tweeter#readme";
        url = "";
        synopsis = "Command-line tool for twitter";
        description = "a Command Line Interface Tweeter";
        buildType = "Simple";
      };
      components = {
        tweet-hs = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-client-tls
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.authenticate-oauth
            hsPkgs.bytestring
            hsPkgs.split
            hsPkgs.optparse-applicative
            hsPkgs.lens
            hsPkgs.data-default
            hsPkgs.text
            hsPkgs.megaparsec
            hsPkgs.ansi-wl-pprint
            hsPkgs.MissingH
            hsPkgs.directory
            hsPkgs.extra
            hsPkgs.composition
          ];
        };
        exes = {
          tweet = {
            depends  = [
              hsPkgs.base
              hsPkgs.tweet-hs
            ];
          };
        };
        tests = {
          tweeths-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tweet-hs
              hsPkgs.hspec
              hsPkgs.hspec-megaparsec
              hsPkgs.megaparsec
              hsPkgs.bytestring
            ];
          };
        };
        benchmarks = {
          tweeths-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.tweet-hs
              hsPkgs.megaparsec
              hsPkgs.bytestring
            ];
          };
        };
      };
    }