{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "temporal-music-notation-demo";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Anton Kholomiov";
        author = "Anton Kholomiov";
        homepage = "";
        url = "";
        synopsis = "generates midi from score notation.";
        description = "Library for playing scores made with 'temporal-music-notation'\nvia midi. It binds 'temporal-media-notation' and 'HCodecs'\npackages. Features composable score representation and\nmicrosound composition. It relies on\nMidi Tuning Standart (MTS) so it's better to listen results\nwith TiMidity or another soft that undestands MTS.\nExamples can be found source directory.";
        buildType = "Simple";
      };
      components = {
        temporal-music-notation-demo = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.temporal-music-notation
            hsPkgs.HCodecs
            hsPkgs.binary
            hsPkgs.cmath
          ];
        };
      };
    }