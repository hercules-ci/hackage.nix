{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "oeis";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "byorgey@gmail.com";
        author = "Brent Yorgey";
        homepage = "";
        url = "";
        synopsis = "Interface to the Online Encyclopedia of Integer Sequences";
        description = "Haskell interface to the Online Encyclopedia of Integer Sequences.";
        buildType = "Custom";
      };
      components = {
        oeis = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.HTTP
          ];
        };
      };
    }