{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "generic-arbitrary";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "makeit@typeable.io";
        author = "Typeable.io contributors";
        homepage = "";
        url = "";
        synopsis = "Generic implementation for QuickCheck's Arbitrary";
        description = "Generic implementations of methods of the 'Arbitrary' class from the\nQuickCheck library. The approach taken here can lead to diverging instances\nfor recursive types but is safe for non-recursive ones and guarantees\nflat distribution for constructors of sum-types.";
        buildType = "Simple";
      };
      components = {
        generic-arbitrary = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
          ];
        };
      };
    }