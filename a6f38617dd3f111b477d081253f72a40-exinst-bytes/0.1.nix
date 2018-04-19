{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "exinst-bytes";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Renzo Carbonara 2015";
        maintainer = "renzoλcarbonara.com.ar";
        author = "Renzo Carbonara";
        homepage = "https://github.com/k0001/exinst";
        url = "";
        synopsis = "Derive instances for the `bytes` library for your existential types.";
        description = "";
        buildType = "Simple";
      };
      components = {
        exinst-bytes = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytes
            hsPkgs.constraints
            hsPkgs.exinst
            hsPkgs.singletons
          ];
        };
      };
    }