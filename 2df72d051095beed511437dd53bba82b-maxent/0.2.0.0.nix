{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "maxent";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "https://github.com/jfischoff/maxent";
        url = "";
        synopsis = "Compute Maximum Entropy Distributions";
        description = "Use this package to compute maximum entropy distributions given a list of values and\nlist of constraints.\n\nHere is a the example from Probability the Logic of Science\n\n@\n&#x20; maxent ([1,2,3], [average 1.5])\n@\n\nRight [0.61, 0.26, 0.11]\n\nThe classic dice example\n\n@\n&#x20; maxent ([1,2,3,4,5,6], [average 4.5])\n@\n\nRight [.05, .07, 0.11, 0.16, 0.23, 0.34]";
        buildType = "Simple";
      };
      components = {
        maxent = {
          depends  = [
            hsPkgs.base
            hsPkgs.nonlinear-optimization
            hsPkgs.vector
            hsPkgs.ad
          ];
        };
      };
    }