{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "np-extras";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Brent Yorgey <byorgey@cis.upenn.edu>";
        author = "Brent Yorgey";
        homepage = "";
        url = "";
        synopsis = "NumericPrelude extras";
        description = "Various extras to extend the NumericPrelude, including\nmultivariate polynomials and factored rationals.";
        buildType = "Simple";
      };
      components = {
        np-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.numeric-prelude
            hsPkgs.primes
            hsPkgs.containers
          ];
        };
      };
    }