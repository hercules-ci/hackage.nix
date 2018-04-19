{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "heap";
          version = "1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2009, Stephan Friedrichs";
        maintainer = "Manuel Eberl (last name + m _at_ in.tum.de)";
        author = "Stephan Friedrichs";
        homepage = "";
        url = "";
        synopsis = "Heaps in Haskell";
        description = "A flexible Haskell implementation of minimum, maximum,\nminimum-priority, maximum-priority and custom-ordered\nheaps.";
        buildType = "Simple";
      };
      components = {
        heap = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          heap-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }