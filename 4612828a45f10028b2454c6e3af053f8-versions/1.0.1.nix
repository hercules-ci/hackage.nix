{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "versions";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "colingw@gmail.com";
        author = "Colin Woodbury";
        homepage = "";
        url = "";
        synopsis = "Types and parsers for software version numbers.";
        description = "A library for parsing and comparing software version numbers.\n\nWe like to give version numbers to our software in a myriad of different\nways. Some ways follow strict guidelines for incrementing and comparison.\nSome follow conventional wisdom and are generally self-consistent.\nSome are just plain asinine. This library provides a means of parsing\nand comparing /any/ style of versioning, be it a nice Semantic Version\nlike this:\n\n> 1.2.3-r1+git123\n\n...or a monstrosity like this:\n\n> 2:10.2+0.0093r3+1-1\n\nPlease switch to <http://semver.org Semantic Versioning> if you\naren't currently using it. It provides consistency in version\nincrementing and has the best constraints on comparisons.";
        buildType = "Simple";
      };
      components = {
        versions = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.text-show
          ];
        };
        tests = {
          versions-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.either
              hsPkgs.extra
              hsPkgs.semigroups
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.text-show
              hsPkgs.versions
            ];
          };
        };
      };
    }