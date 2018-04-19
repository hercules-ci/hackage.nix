{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "permutation";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
        maintainer = "Patrick Perry <patperry@stanford.edu>";
        author = "Patrick Perry";
        homepage = "http://stat.stanford.edu/~patperry/code/permutation";
        url = "";
        synopsis = "Permutations and combinations";
        description = "A library for representing and applying permutations.\n";
        buildType = "Custom";
      };
      components = {
        permutation = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }