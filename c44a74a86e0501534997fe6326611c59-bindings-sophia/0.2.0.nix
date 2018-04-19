{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bindings-sophia";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Eyal Lotem <eyal.lotem+sophia@gmail.com>";
        author = "Eyal Lotem <eyal.lotem+sophia@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Low-level bindings to sophia library";
        description = "Low-level bindings to <http://sphia.org/ sophia>, an open source,\nmodern, fast key/value store.";
        buildType = "Simple";
      };
      components = {
        bindings-sophia = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
        };
      };
    }