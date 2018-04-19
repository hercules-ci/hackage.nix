{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "reflex-dom-colonnade";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/colonnade#readme";
        url = "";
        synopsis = "Use colonnade with reflex-dom";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        reflex-dom-colonnade = {
          depends  = [
            hsPkgs.base
            hsPkgs.colonnade
            hsPkgs.contravariant
            hsPkgs.vector
            hsPkgs.reflex
            hsPkgs.reflex-dom
            hsPkgs.containers
          ];
        };
      };
    }