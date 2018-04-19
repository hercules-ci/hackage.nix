{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "heap";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008, Stephan Friedrichs";
        maintainer = "Stephan Friedrichs (deduktionstheorem at web dot de)";
        author = "Stephan Friedrichs";
        homepage = "";
        url = "";
        synopsis = "Heaps in Haskell";
        description = "A flexible Haskell heap implementation";
        buildType = "Simple";
      };
      components = {
        heap = {
          depends  = [ hsPkgs.base ];
        };
      };
    }