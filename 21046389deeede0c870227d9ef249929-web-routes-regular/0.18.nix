{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "web-routes-regular";
          version = "0.18";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Library for maintaining correctness of URLs within an application.";
        description = "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.";
        buildType = "Simple";
      };
      components = {
        web-routes-regular = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.regular
            hsPkgs.web-routes
          ];
        };
      };
    }