{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wxturtle";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "";
        url = "";
        synopsis = "turtle like LOGO with wxHaskell";
        description = "turtle like LOGO with wxHaskell";
        buildType = "Simple";
      };
      components = {
        wxturtle = {
          depends  = [
            hsPkgs.base
            hsPkgs.yjtools
            hsPkgs.convertible
            hsPkgs.yjsvg
            hsPkgs.Imlib
            hsPkgs.wx
          ];
        };
        exes = { testTurtle = {}; };
      };
    }