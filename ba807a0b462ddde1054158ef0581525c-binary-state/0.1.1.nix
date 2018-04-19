{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "binary-state";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "portnov84@rambler.ru";
        author = "Ilya V. Portnov";
        homepage = "";
        url = "";
        synopsis = "Simple wrapper around Data.Binary, which adds StateT to Get/Put monads.";
        description = "This package declares BinaryState type class, which is similar to\nData.Binary.Binary, but Get/Put monads can track state.";
        buildType = "Simple";
      };
      components = {
        binary-state = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.mtl
            hsPkgs.bytestring
          ];
        };
      };
    }