{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "web-routes-th";
          version = "0.21.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Support for deriving PathInfo using Template Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        web-routes-th = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.web-routes
          ];
        };
      };
    }