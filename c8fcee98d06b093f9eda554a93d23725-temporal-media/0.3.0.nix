{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "temporal-media";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<anton.kholomiov@gmail.com>";
        author = "Anton Kholomiov";
        homepage = "";
        url = "";
        synopsis = "data types for temporal media";
        description = "An embedded domain-specific language (EDSL) for\ncreating lists of constant time events related in time.";
        buildType = "Simple";
      };
      components = {
        temporal-media = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
          ];
        };
      };
    }