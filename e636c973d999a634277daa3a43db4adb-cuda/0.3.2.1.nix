{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cuda";
          version = "0.3.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) [2009..2011]. Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        author = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        homepage = "";
        url = "";
        synopsis = "FFI binding to the CUDA interface for programming NVIDIA GPUs";
        description = "The CUDA library provides a direct, general purpose C-like SPMD programming\nmodel for NVIDIA graphics cards (G8x series onwards). This is a collection\nof bindings to allow you to call and control, although not write, such\nfunctions from Haskell-land. You will need to install the CUDA driver and\ndeveloper toolkit.\n\n<http://developer.nvidia.com/object/cuda.html>\n\nThe configure script will look for your CUDA installation in the standard\nplaces, and if the nvcc compiler is found in your PATH, relative to that.\n\n> CHANGE LOG\n>   0.3.2\n>    - Initial support for CUDA 3.2\n>\n>   0.2.2\n>    - Foreign.CUDA.Analysis.optimalBlockSizeBy\n>\n>   0.2.1\n>    - Improved cabal configuration phase\n>    - Fixes for SDK 3.1 release changes\n>    - Additional CUDA 3.1 bindings\n>\n>   0.2\n>    - Occupancy calculator\n>    - Textures\n>    - Additional CUDA 3.0 bindings\n>\n>   0.1\n>    - Initial release";
        buildType = "Custom";
      };
      components = {
        cuda = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.extensible-exceptions
          ];
        };
      };
    }