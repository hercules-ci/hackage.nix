{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "throwable-exceptions";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "aiya000";
        maintainer = "aiya000.develop@gmail.com";
        author = "aiya000";
        homepage = "https://github.com/aiya000/hs-throwable-exceptions#README.md";
        url = "";
        synopsis = "throwable-exceptions gives the exception's value constructors";
        description = "throwable-exceptions gives the exception's value constructors";
        buildType = "Simple";
      };
      components = {
        throwable-exceptions = {
          depends  = [
            hsPkgs.base
            hsPkgs.safe-exceptions
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.either
              hsPkgs.safe-exceptions
              hsPkgs.tasty
              hsPkgs.tasty-discover
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.throwable-exceptions
            ];
          };
        };
      };
    }