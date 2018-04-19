{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "persistent-instances-iproute";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lanablack@amok.cc";
        author = "Lana Black";
        homepage = "";
        url = "";
        synopsis = "Persistent instances for types in iproute";
        description = "";
        buildType = "Simple";
      };
      components = {
        persistent-instances-iproute = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.iproute
            hsPkgs.persistent
          ];
        };
      };
    }