{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "bitmaps";
          version = "0.2.6.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010 Byron James Johnson";
        maintainer = "ByronJohnsonFP@gmail.com";
        author = "Byron James Johnson";
        homepage = "https://github.com/bairyn/bitmaps";
        url = "";
        synopsis = "Bitmap library";
        description = "Library defining several bitmap types, including ones stored as unboxed\narrays, any string type, and functions\n\nThis library also supports conversion to and from bitmaps as defined in the\n\"bitmap\" package.\n\nThis library has not yet been tested extensively.\n\nNote: This library is currently largely designed with RGB pixels with a\ncolor depth of 24 bits in mind.  Better support for other pixel and color\nformats is intended to be implemented in the future.";
        buildType = "Simple";
      };
      components = {
        bitmaps = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.cereal
            hsPkgs.monad-state
            hsPkgs.zlib
            hsPkgs.bitmap
            hsPkgs.stb-image
            hsPkgs.string-class
            hsPkgs.tagged
            hsPkgs.bytestring
          ];
        };
      };
    }