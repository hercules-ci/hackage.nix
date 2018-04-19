{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "salvia-extras";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sfvisser@cs.uu.nl";
        author = "Sebastiaan Visser";
        homepage = "";
        url = "";
        synopsis = "Collection of non-fundamental request handler for the Salvia web server.";
        description = "Collection of non-fundamental request handler for the Salvia web server.";
        buildType = "Simple";
      };
      components = {
        salvia-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.fclabels
            hsPkgs.clevercss
            hsPkgs.hscolour
            hsPkgs.salvia
          ];
        };
      };
    }