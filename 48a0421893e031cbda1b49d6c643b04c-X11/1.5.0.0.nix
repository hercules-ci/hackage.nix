{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      smaller_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "X11";
          version = "1.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Alastair Reid, 1999-2003, libraries@haskell.org 2003-2007, Don Stewart 2007-2009, Spencer Janssen 2007-2009.";
        maintainer = "Spencer Janssen <spencerjanssen@gmail.com>";
        author = "";
        homepage = "http://code.haskell.org/X11";
        url = "";
        synopsis = "A binding to the X11 graphics library";
        description = "A Haskell binding to the X11 graphics library.\nThe binding is a direct translation of the C binding; for\ndocumentation of these calls, refer to \"The Xlib Programming\nManual\", available online at <http://tronche.com/gui/x/xlib/>.";
        buildType = "Configure";
      };
      components = {
        X11 = {
          depends  = if _flags.smaller_base
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ];
          libs = [ pkgs.X11 ];
        };
      };
    }