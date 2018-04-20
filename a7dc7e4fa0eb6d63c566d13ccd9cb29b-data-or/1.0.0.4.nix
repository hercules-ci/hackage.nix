{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-or";
          version = "1.0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010--2013 wren ng thornton";
        maintainer = "wren@community.haskell.org";
        author = "wren ng thornton";
        homepage = "http://code.haskell.org/~wren/";
        url = "";
        synopsis = "A data type for non-exclusive disjunction.";
        description = "A data type for non-exclusive disjunction.";
        buildType = "Simple";
      };
      components = {
        data-or = {
          depends  = [ hsPkgs.base ];
        };
      };
    }