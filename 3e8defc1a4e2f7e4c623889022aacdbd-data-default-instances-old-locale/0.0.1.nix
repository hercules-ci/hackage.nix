{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-default-instances-old-locale";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<l.mai@web.de>";
        author = "Lukas Mai";
        homepage = "";
        url = "";
        synopsis = "Default instances for types in old-locale";
        description = "";
        buildType = "Simple";
      };
      components = {
        data-default-instances-old-locale = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default-class
            hsPkgs.old-locale
          ];
        };
      };
    }