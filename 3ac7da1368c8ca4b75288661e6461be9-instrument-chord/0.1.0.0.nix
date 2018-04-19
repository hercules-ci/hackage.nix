{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "instrument-chord";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "w@xy30.com";
        author = "Alan Hawkins";
        homepage = "xy30.com";
        url = "";
        synopsis = "Render Musical Chords on Instrument";
        description = "";
        buildType = "Simple";
      };
      components = {
        instrument-chord = {
          depends  = [ hsPkgs.base ];
        };
      };
    }