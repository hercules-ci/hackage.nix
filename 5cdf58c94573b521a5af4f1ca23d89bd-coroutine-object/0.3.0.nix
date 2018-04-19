{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "coroutine-object";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "";
        url = "";
        synopsis = "Object-oriented programming realization using coroutine";
        description = "Object-oriented programming realization using coroutine";
        buildType = "Simple";
      };
      components = {
        coroutine-object = {
          depends  = [
            hsPkgs.base
            hsPkgs.either
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.free
          ];
        };
      };
    }