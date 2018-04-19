{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lilypond";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund <hans@hanshoglund.se>";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Bindings to Lilypond";
        description = "This package contains a terse Haskell representation of (a subset of) Lilypond\nexpressions and a pretty-printer for such expressions. They can be used to generate\nmusical notation.";
        buildType = "Simple";
      };
      components = {
        lilypond = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.prettify
            hsPkgs.vector-space
            hsPkgs.process
            hsPkgs.data-default
            hsPkgs.music-pitch-literal
            hsPkgs.music-dynamics-literal
          ];
        };
      };
    }