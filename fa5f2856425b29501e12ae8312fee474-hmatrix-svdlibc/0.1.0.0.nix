{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hmatrix-svdlibc";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bgamari.foss@gmail.com";
        author = "Ben Gamari";
        homepage = "http://github.com/bgamari/hmatrix-svdlibc";
        url = "";
        synopsis = "SVDLIBC bindings for HMatrix";
        description = "Bindings for the sparse singular value decomposition\nprovided by SVDLIBC.";
        buildType = "Simple";
      };
      components = {
        hmatrix-svdlibc = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
          ];
        };
        exes = {
          svdlibc-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hmatrix
            ];
          };
        };
      };
    }