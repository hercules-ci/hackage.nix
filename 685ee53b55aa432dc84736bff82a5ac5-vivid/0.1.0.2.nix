{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "vivid";
          version = "0.1.0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Tom Murphy";
        author = "Tom Murphy";
        homepage = "";
        url = "";
        synopsis = "Sound synthesis with SuperCollider";
        description = "Sound synthesis with SuperCollider. Start with Vivid.SynthDef";
        buildType = "Simple";
      };
      components = {
        vivid = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.split
            hsPkgs.stm
          ];
        };
      };
    }