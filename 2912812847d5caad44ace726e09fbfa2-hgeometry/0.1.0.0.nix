{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hgeometry";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "f.staals@uu.nl";
        author = "Frank Staals";
        homepage = "";
        url = "";
        synopsis = "Geometry types in Haskell";
        description = "Several basic geometry geometry types and functions on these types.";
        buildType = "Simple";
      };
      components = {
        hgeometry = {
          depends  = [ hsPkgs.base ];
        };
      };
    }