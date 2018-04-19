{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hjsonpointer";
          version = "1.2.0";
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
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.hashable
            hsPkgs.QuickCheck
            hsPkgs.unordered-containers
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        tests = {
          unit = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.hjsonpointer
              hsPkgs.hspec
              hsPkgs.http-types
              hsPkgs.QuickCheck
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.vector
            ];
          };
        };
      };
    }