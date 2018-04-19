{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "music-diatonic";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Patrick LeBoutillier <patl@cpan.org>,\nAlan Hawkins <w@xy30.com>";
        author = "Patrick LeBoutillier";
        homepage = "";
        url = "";
        synopsis = "Implementation of basic western musical theory objects.";
        description = "music-diatonic provides an implementation of basic western musical theory objects.\nIncludes notes, scales, chords, degrees and harmonies.";
        buildType = "Simple";
      };
      components = {
        music-diatonic = {
          depends  = [ hsPkgs.base ];
        };
      };
    }