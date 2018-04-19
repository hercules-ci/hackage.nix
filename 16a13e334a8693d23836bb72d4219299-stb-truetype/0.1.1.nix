{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "stb-truetype";
          version = "0.1.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
        author = "Balazs Komuves";
        homepage = "http://code.haskell.org/~bkomuves/";
        url = "";
        synopsis = "A wrapper around Sean Barrett's TrueType rasterizer library.";
        description = "A wrapper around Sean Barrett's TrueType rasterizer library.";
        buildType = "Simple";
      };
      components = {
        stb-truetype = {
          depends  = if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.bytestring
            ]
            else [ hsPkgs.base ];
        };
      };
    }