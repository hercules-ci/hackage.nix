{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "permutation";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
        maintainer = "Patrick Perry <patperry@stanford.edu>";
        author = "Patrick Perry";
        homepage = "http://stat.stanford.edu/~patperry/code/permutation";
        url = "";
        synopsis = "A library for permutations and combinations.";
        description = "This library includes data types for storing permutations and\ncombinations.  It implements pure and impure types, the latter of\nwhich can be modified in-place.  The library uses aggressive\ninlining and MutableByteArray#s internally, so it is very\nefficient.\n\nThe main utility of the library is converting between the linear\nrepresentation of a permutation and a sequence of swaps.  This\nallows, for instance, applying a permutation or its inverse\nto an array with O(1) memory use.\n\nMuch of the interface for the library is based on the permutation\nand combination functions in the GNU Scientific Library (GSL).\n";
        buildType = "Custom";
      };
      components = {
        permutation = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }