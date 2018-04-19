{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "typography-geometry";
          version = "1.0.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Jean-Philippe Bernardy <jeanphilippe.bernardy@gmail.com>";
        author = "Pierre-Etienne Meunier <pierreetienne.meunier@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Drawings for printed text documents";
        description = "Drawings for printed text documents";
        buildType = "Simple";
      };
      components = {
        typography-geometry = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.polynomials-bernstein
            hsPkgs.containers
            hsPkgs.parallel
          ];
        };
      };
    }