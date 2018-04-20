{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AC-EasyRaster-GTK";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andrew Coppin <MathematicalOrchid@hotmail.com>";
        author = "Andrew Coppin";
        homepage = "";
        url = "";
        synopsis = "GTK+ pixel plotting.";
        description = "This package is a thin layer over Gtk2hs providing an easy\ninterface for people who want to do bitmapped graphics.\nCairo already provides easy access to /vector/ graphics;\nthis package is directed at /bitmap/ graphics (i.e.,\nreading and writing individual pixels). This is useful for\napplications such as fractal generators, ray tracers, etc.";
        buildType = "Simple";
      };
      components = {
        AC-EasyRaster-GTK = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.gtk
          ];
        };
      };
    }