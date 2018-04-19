{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "boomerang";
          version = "1.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Library for invertible parsing and printing";
        description = "Specify a single unified grammar which can be used for parsing and pretty-printing";
        buildType = "Simple";
      };
      components = {
        boomerang = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.text
          ];
        };
      };
    }