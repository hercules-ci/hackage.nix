{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "GPipe-Collada";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Tobias Bexelius";
        maintainer = "Tobias Bexelius";
        author = "Tobias Bexelius";
        homepage = "http://www.haskell.org/haskellwiki/GPipe";
        url = "http://hackage.haskell.org/package/GPipe-Collada";
        synopsis = "Load GPipe meshes from Collada files";
        description = "This package provides data types for a Collada scene graph including geometries, cameras and lights that may be loaded from\nCollada (dae) files. Geometries are represented by GPipe PrimitiveStreams. A utility module is included that include traverse helpers\nand render functions.";
        buildType = "Simple";
      };
      components = {
        GPipe-Collada = {
          depends  = [
            hsPkgs.GPipe
            hsPkgs.base
            hsPkgs.HaXml
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.Vec
            hsPkgs.Vec-Transform
            hsPkgs.array
          ];
        };
      };
    }