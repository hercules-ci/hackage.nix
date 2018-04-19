{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "average";
          version = "0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund <hans@hanshoglund.se>";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "An average (arithmetic mean) monoid.";
        description = "Provides a monoid for calculating arithmetic means.";
        buildType = "Simple";
      };
      components = {
        average = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector-space
            hsPkgs.semigroups
          ];
        };
      };
    }