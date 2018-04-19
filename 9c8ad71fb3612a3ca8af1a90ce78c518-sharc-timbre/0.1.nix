{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "sharc-timbre";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<anton.kholomiov@gmail.com>";
        author = "Anton Kholomiov";
        homepage = "https://github.com/anton-k/sharc";
        url = "";
        synopsis = "Sandell Harmonic Archive. A collection of stable phases for all instruments in the orchestra.";
        description = "A collection of stable phases for all instruments in the orchestra.\nIt was originally produced by Greg Sandell. here it's available for you\nin the format of plain Haskell data.";
        buildType = "Simple";
      };
      components = {
        sharc-timbre = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
          ];
        };
      };
    }