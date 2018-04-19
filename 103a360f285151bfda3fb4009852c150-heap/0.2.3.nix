{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "heap";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008, Stephan Friedrichs";
        maintainer = "stephan[dot]friedrichs[at]tu-bs[dot]de";
        author = "Stephan Friedrichs";
        homepage = "";
        url = "";
        synopsis = "Heaps in Haskell";
        description = "A flexible Haskell heap implementation";
        buildType = "Custom";
      };
      components = {
        heap = {
          depends  = [ hsPkgs.base ];
        };
      };
    }