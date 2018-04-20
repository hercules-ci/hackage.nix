{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      enable-overloading = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gi-gstaudio";
          version = "1.0.14";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "GStreamerAudio bindings";
        description = "Bindings for GStreamerAudio, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        gi-gstaudio = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.haskell-gi
            hsPkgs.gi-gstbase
            hsPkgs.gi-gst
            hsPkgs.gi-gobject
            hsPkgs.gi-glib
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ] ++ [
            hsPkgs.haskell-gi-overloading
          ];
          pkgconfig = [
            pkgconfPkgs."gstreamer-audio-1.0"
          ];
        };
      };
    }