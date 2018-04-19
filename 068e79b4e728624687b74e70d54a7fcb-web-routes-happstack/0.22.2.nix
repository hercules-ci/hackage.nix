{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "web-routes-happstack";
          version = "0.22.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Adds support for using web-routes with Happstack";
        description = "";
        buildType = "Simple";
      };
      components = {
        web-routes-happstack = {
          depends  = [
            hsPkgs.base
            hsPkgs.happstack-server
            hsPkgs.web-routes
          ];
        };
      };
    }