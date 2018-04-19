{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "web-routes-mtl";
          version = "0.20.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Extends web-routes with mtl-based MonadIO / MonadTrans RouteT instances";
        description = "";
        buildType = "Simple";
      };
      components = {
        web-routes-mtl = {
          depends  = [
            hsPkgs.base
            hsPkgs.web-routes
          ];
        };
      };
    }