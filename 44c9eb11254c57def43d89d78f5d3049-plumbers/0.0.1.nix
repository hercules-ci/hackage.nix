{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "plumbers";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Sloan <mgsloan at gmail>";
        author = "Michael Sloan";
        homepage = "";
        url = "";
        synopsis = "Pointless plumbing combinators";
        description = "";
        buildType = "Simple";
      };
      components = {
        plumbers = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }