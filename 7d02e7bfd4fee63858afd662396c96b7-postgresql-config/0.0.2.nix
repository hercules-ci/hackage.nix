{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "postgresql-config";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "s9gf4ult@gmail.com";
        author = "Aleksey Uimanov";
        homepage = "https://bitbucket.org/s9gf4ult/postgresql-config";
        url = "";
        synopsis = "Types for easy adding postgresql configuration to your program";
        description = "";
        buildType = "Simple";
      };
      components = {
        postgresql-config = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.postgresql-simple
            hsPkgs.resource-pool
            hsPkgs.time
          ];
        };
      };
    }