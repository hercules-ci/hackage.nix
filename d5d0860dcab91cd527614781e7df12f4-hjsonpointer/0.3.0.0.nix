{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hjsonpointer";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ian@housejeffries.com";
        author = "Ian Grant Jeffries";
        homepage = "https://github.com/seagreen/hjsonpointer";
        url = "";
        synopsis = "JSON Pointer library";
        description = "";
        buildType = "Simple";
      };
      components = {
        hjsonpointer = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.hjsonpointer
            ];
          };
        };
        tests = {
          unit = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.hjsonpointer
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.http-types
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }