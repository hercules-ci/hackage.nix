{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clash-prelude";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2013-2014 University of Twente";
        maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
        author = "Christiaan Baaij";
        homepage = "http://clash.ewi.utwente.nl/";
        url = "";
        synopsis = "CAES Language for Synchronous Hardware - Prelude library";
        description = "";
        buildType = "Simple";
      };
      components = {
        clash-prelude = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.template-haskell
            hsPkgs.th-lift
          ];
        };
      };
    }