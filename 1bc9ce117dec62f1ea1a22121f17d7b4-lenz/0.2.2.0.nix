{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "lenz";
          version = "0.2.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "© Unix year 47 M Farkas-Dyck";
        maintainer = "strake888@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Van Laarhoven lenses";
        description = "";
        buildType = "Simple";
      };
      components = {
        lenz = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.hs-functors
            hsPkgs.transformers
          ];
        };
      };
    }