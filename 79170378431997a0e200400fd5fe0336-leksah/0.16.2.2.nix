{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      webkit2 = true;
      yi = false;
      codemirror = false;
      dyre = true;
      threaded = true;
      loc = false;
      network-uri = true;
      gtk-318 = true;
      gtk-320 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "leksah";
          version = "0.16.2.2";
        };
        license = "LicenseRef-GPL";
        copyright = "2007-2016 Juergen Nicklisch-Franken, Hamish Mackenzie, Jacco Krijnen, JP Moresmau";
        maintainer = "maintainer@leksah.org";
        author = "Juergen Nicklisch-Franken, Hamish Mackenzie, Jacco Krijnen, JP Moresmau";
        homepage = "http://www.leksah.org";
        url = "http://code.haskell.org/leksah";
        synopsis = "Haskell IDE written in Haskell";
        description = "An Integrated Development Environment for Haskell written in Haskell.";
        buildType = "Simple";
      };
      components = {
        leksah = {
          depends  = ((((((((([
            hsPkgs.base-compat
            hsPkgs.haskell-gi-base
            hsPkgs.gi-glib
            hsPkgs.gi-gobject
            hsPkgs.gi-gio
            hsPkgs.gi-cairo
            hsPkgs.gi-gdk
            hsPkgs.gi-gdkpixbuf
            hsPkgs.gi-gtk
            hsPkgs.gi-pango
            hsPkgs.gi-gtksource
            hsPkgs.gi-gtk-hs
            hsPkgs.ghcjs-codemirror
            hsPkgs.blaze-html
            hsPkgs.pretty-show
            hsPkgs.Cabal
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.regex-tdfa
            hsPkgs.regex-tdfa-text
            hsPkgs.regex-base
            hsPkgs.utf8-string
            hsPkgs.array
            hsPkgs.time
            hsPkgs.ltk
            hsPkgs.binary-shared
            hsPkgs.deepseq
            hsPkgs.hslogger
            hsPkgs.strict
            hsPkgs.conduit
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.executable-path
            hsPkgs.vcsgui
            hsPkgs.vcswrapper
            hsPkgs.QuickCheck
            hsPkgs.hlint
            hsPkgs.vado
            hsPkgs.shakespeare
            hsPkgs.cpphs
            hsPkgs.stm
            hsPkgs.split
            hsPkgs.HTTP
            hsPkgs.fsnotify
            hsPkgs.haskell-gi-overloading
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [
              hsPkgs.unix
            ])) ++ pkgs.lib.optional system.isOsx hsPkgs.gi-gtkosxapplication) ++ (if _flags.webkit2 && !system.isWindows
            then [ hsPkgs.gi-webkit2 ]
            else [
              hsPkgs.gi-webkit
            ])) ++ optionals _flags.yi [
            hsPkgs.yi
            hsPkgs.yi-language
            hsPkgs.yi-rope
          ]) ++ pkgs.lib.optional (_flags.yi && _flags.dyre) hsPkgs.dyre) ++ optionals _flags.codemirror [
            hsPkgs.jsaddle
            hsPkgs.lens
          ]) ++ optionals (_flags.loc && system.isLinux) [
            hsPkgs.hgettext
            hsPkgs.setlocale
          ]) ++ (if _flags.network-uri
            then [
              hsPkgs.network-uri
              hsPkgs.network
            ]
            else [
              hsPkgs.network
            ])) ++ pkgs.lib.optional compiler.isGhc hsPkgs.binary-shared) ++ optionals (!compiler.isGhcjs) [
            hsPkgs.ghc
            hsPkgs.haskell-src-exts
            hsPkgs.leksah-server
          ];
          libs = pkgs.lib.optional system.isWindows pkgs.kernel32;
        };
        exes = {
          leksah = {
            depends  = (([
              hsPkgs.leksah
              hsPkgs.base
              hsPkgs.gi-gtk-hs
              hsPkgs.stm
            ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32) ++ optionals (system.isLinux && _flags.loc) [
              hsPkgs.hgettext
              hsPkgs.setlocale
            ]) ++ pkgs.lib.optional (!compiler.isGhcjs) hsPkgs.leksah-server;
            libs = pkgs.lib.optional system.isWindows pkgs.kernel32;
          };
        };
      };
    }