{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "manatee-browser";
          version = "0.1.1";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2010 ~ 2011 Andy Stewart";
        maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
        author = "Andy Stewart";
        homepage = "";
        url = "";
        synopsis = "Browser extension for Manatee.";
        description = "manatee-browser is WebKit browser extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nVideo (Select 720p HD) at : <http://www.youtube.com/watch?v=weS6zys3U8k> <http://www.youtube.com/watch?v=A3DgKDVkyeM> <http://v.youku.com/v_show/id_XMjI2MDMzODI4.html>\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n";
        buildType = "Custom";
      };
      components = {
        manatee-browser = {
          depends  = [
            hsPkgs.base
            hsPkgs.manatee-core
            hsPkgs.dbus-client
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.webkit
            hsPkgs.gtk
            hsPkgs.derive
            hsPkgs.binary
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.utf8-string
            hsPkgs.filepath
          ];
        };
        exes = {
          manatee-browser = {};
        };
      };
    }