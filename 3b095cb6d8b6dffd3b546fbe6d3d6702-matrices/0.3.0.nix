{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "matrices";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Kai Zhang";
        maintainer = "kai@kzhang.org";
        author = "Kai Zhang";
        homepage = "";
        url = "";
        synopsis = "native matrix based on vector";
        description = "This library provide the APIs for creating, indexing,\nmodifying matrices (2d arrays). The underling data\nstructure is vector. It's not intended to be a linear\nalgebra library.";
        buildType = "Simple";
      };
      components = {
        matrices = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.primitive
          ];
        };
      };
    }