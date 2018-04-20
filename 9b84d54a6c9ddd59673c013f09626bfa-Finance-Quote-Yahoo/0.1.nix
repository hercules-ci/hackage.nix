{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Finance-Quote-Yahoo";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@fastmail.fm";
        author = "brad clawsie";
        homepage = "http://www.b7j0c.org/content/haskell-yquote.html";
        url = "";
        synopsis = "Obtain quote data from finance.yahoo.com";
        description = "Obtain quote data from finance.yahoo.com";
        buildType = "Custom";
      };
      components = {
        Finance-Quote-Yahoo = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.HTTP
            hsPkgs.HTTP-Simple
            hsPkgs.MissingH
          ];
        };
      };
    }