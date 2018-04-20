{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bindings-glib";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
        author = "Maurício C. Antunes";
        homepage = "";
        url = "";
        synopsis = "Low level bindings to GLib.";
        description = "";
        buildType = "Simple";
      };
      components = {
        bindings-glib = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
          pkgconfig = [
            pkgconfPkgs."glib-2.0"
            pkgconfPkgs."gthread-2.0"
          ];
        };
      };
    }