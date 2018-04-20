{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "continued-fractions";
          version = "0.9";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "/dev/null";
        url = "";
        synopsis = "Continued fractions.";
        description = "A type and some functions for manipulating and\nevaluating continued fractions.";
        buildType = "Simple";
      };
      components = {
        continued-fractions = {
          depends  = [ hsPkgs.base ];
        };
      };
    }