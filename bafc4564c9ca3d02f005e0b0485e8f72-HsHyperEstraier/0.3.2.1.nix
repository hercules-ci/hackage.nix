{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HsHyperEstraier";
          version = "0.3.2.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <pho at cielonegro dot org>";
        author = "PHO <pho at cielonegro dot org>";
        homepage = "http://cielonegro.org/HsHyperEstraier.html";
        url = "";
        synopsis = "HyperEstraier binding for Haskell";
        description = "HsHyperEstraier is a HyperEstraier binding for\nHaskell. HyperEstraier is an embeddable full text search engine\nwhich is supposed to be independent to any particular natural\nlanguages.";
        buildType = "Simple";
      };
      components = {
        HsHyperEstraier = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.utf8-string
          ];
        };
      };
    }