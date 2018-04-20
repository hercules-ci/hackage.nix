{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "colour";
          version = "2.3.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Russell O'Connor <roconnor@theorem.ca>";
        author = "Russell O'Connor";
        homepage = "http://www.haskell.org/haskellwiki/Colour";
        url = "";
        synopsis = "A model for human colour/color perception";
        description = "This package provides a data type for colours and transparency.\nColours can be blended and composed.\nVarious colour spaces are supported.\nA module of colour names (\"Data.Colour.Names\") is provided.";
        buildType = "Simple";
      };
      components = {
        colour = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          test-colour = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }