{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      openblas = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hmatrix";
          version = "0.17.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alberto Ruiz";
        author = "Alberto Ruiz";
        homepage = "https://github.com/albertoruiz/hmatrix";
        url = "";
        synopsis = "Numeric Linear Algebra";
        description = "Linear systems, matrix decompositions, and other numerical computations based on BLAS and LAPACK.\n\nStandard interface: \"Numeric.LinearAlgebra\".\n\nSafer interface with statically checked dimensions: \"Numeric.LinearAlgebra.Static\".\n\nCode examples: <http://dis.um.es/~alberto/hmatrix/hmatrix.html>";
        buildType = "Simple";
      };
      components = {
        hmatrix = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.array
            hsPkgs.deepseq
            hsPkgs.random
            hsPkgs.split
            hsPkgs.bytestring
            hsPkgs.storable-complex
            hsPkgs.vector
          ];
          libs = (((if system.isOsx && _flags.openblas
            then [ pkgs.openblas ]
            else [
              pkgs.blas
              pkgs.lapack
            ]) ++ optionals system.isFreebsd ([
            pkgs.gfortran
          ] ++ (if _flags.openblas
            then [ pkgs.openblas ]
            else [
              pkgs.blas
              pkgs.lapack
            ]))) ++ (if system.isWindows && _flags.openblas
            then [ pkgs.libopenblas ]
            else [
              pkgs.blas
              pkgs.lapack
            ])) ++ (if system.isLinux && _flags.openblas
            then [ pkgs.openblas ]
            else [ pkgs.blas pkgs.lapack ]);
          frameworks = pkgs.lib.optional system.isOsx pkgs.Accelerate;
        };
      };
    }