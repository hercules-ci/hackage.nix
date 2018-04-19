{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "instrument-chord";
          version = "0.1.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "w@xy30.com";
        author = "Alan Hawkins";
        homepage = "https://github.com/xpika/chord";
        url = "";
        synopsis = "Render Instrument Chords";
        description = "Library which Pretty Prints Guitar Chords";
        buildType = "Simple";
      };
      components = {
        instrument-chord = {
          depends  = [
            hsPkgs.base
            hsPkgs.music-diatonic
          ];
        };
      };
    }