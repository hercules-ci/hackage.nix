{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "ieee";
          version = "0.6";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009. Patrick Perry <patperry@gmail.com>";
        maintainer = "Patrick Perry <patperry@gmail.com>";
        author = "Patrick Perry";
        homepage = "http://github.com/patperry/hs-ieee";
        url = "";
        synopsis = "Approximate comparisons for IEEE floating point numbers";
        description = "Approximate comparison of floating point numbers based on the\nalgorithm in Section 4.2.2 of Knuth's _Seminumerical Algorithms_,\nNaN-aware minimum and maximum, and a type class for approximate\ncomparisons.\n";
        buildType = "Custom";
      };
      components = {
        ieee = {
          depends  = [ hsPkgs.base ];
        };
      };
    }