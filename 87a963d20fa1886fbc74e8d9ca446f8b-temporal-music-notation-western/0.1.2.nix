{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "temporal-music-notation-western";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Anton Kholomiov";
        author = "Anton Kholomiov";
        homepage = "";
        url = "";
        synopsis = "music notation";
        description = "Localization of 'temporal-music-notation' library for\nWestern music tradition.";
        buildType = "Simple";
      };
      components = {
        temporal-music-notation-western = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.temporal-music-notation
          ];
        };
      };
    }