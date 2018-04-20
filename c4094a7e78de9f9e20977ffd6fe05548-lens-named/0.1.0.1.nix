{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "lens-named";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/lens-named#readme";
        url = "";
        synopsis = "Helper for use with lens";
        description = "Simplifies generation of simple lenses";
        buildType = "Simple";
      };
      components = {
        lens-named = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.template-haskell
          ];
        };
      };
    }