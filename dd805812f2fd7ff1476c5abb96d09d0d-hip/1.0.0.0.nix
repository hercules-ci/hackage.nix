{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hip";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lehins@yandex.ru";
        author = "Alexey Kuleshevich";
        homepage = "https://github.com/lehins/hip";
        url = "";
        synopsis = "Haskell Image Processing (HIP) Library.";
        description = "\nHaskell Image Processing (HIP) Library provides an easy to use interface with a whole variaty of image manipulation capabilities.\n\nProcessing can be done sequentially as well as in parallel, with an inherited fusion capabily, all through <https://hackage.haskell.org/package/repa repa> and <https://hackage.haskell.org/package/vector vector> packages. It is highly extendable, with an ability to add custom color spaces or use some other underlying data structure.\n\nIt is capable of reading and writing a number of popular image formats by using <https://hackage.haskell.org/package/JuicyPixels JuciyPixels> and <https://hackage.haskell.org/package/netpbm netpbm> packages. Being a pure Haskell library it does not require any external programs, but it can display images using a program of your choice.";
        buildType = "Simple";
      };
      components = {
        hip = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.filepath
            hsPkgs.JuicyPixels
            hsPkgs.netpbm
            hsPkgs.primitive
            hsPkgs.process
            hsPkgs.repa
            hsPkgs.temporary
            hsPkgs.vector
            hsPkgs.vector-th-unbox
          ];
        };
      };
    }