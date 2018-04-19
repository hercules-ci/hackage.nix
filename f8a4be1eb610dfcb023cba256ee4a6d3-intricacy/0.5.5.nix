{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      game = true;
      sdl = true;
      sound = true;
      curses = true;
      server = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "intricacy";
          version = "0.5.5";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "mbays@sdf.org";
        author = "Martin Bays";
        homepage = "http://mbays.freeshell.org/intricacy";
        url = "";
        synopsis = "A game of competitive puzzle-design";
        description = "A networked game with client-server architecture. The core game is a\nlockpicking-themed turn-based puzzle game on a hex grid. Players design\npuzzles (locks) and solve those designed by others. A metagame encourages\nthe design of maximally difficult puzzles, within tight size constraints.\nThe client supports Curses and SDL, with all graphics in SDL mode drawn by\ncode using SDL-gfx. The network protocol is based on the 'binary' package,\nand is intended to be reasonably efficient. TVars are used to give\ntransparent local caching and background network operations. Also\nincorporates an implementation of a graph 5-colouring algorithm (see\nGraphColouring.hs).";
        buildType = "Simple";
      };
      components = {
        exes = {
          intricacy = {
            depends  = (optionals _flags.game ([
              hsPkgs.base
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.stm
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.time
              hsPkgs.bytestring
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.binary
              hsPkgs.network-fancy
              hsPkgs.cryptohash
              hsPkgs.safe
            ] ++ optionals _flags.sdl ([
              hsPkgs.SDL
              hsPkgs.SDL-ttf
              hsPkgs.SDL-gfx
            ] ++ optionals _flags.sound [
              hsPkgs.SDL-mixer
              hsPkgs.random
            ])) ++ pkgs.lib.optional _flags.curses hsPkgs.hscurses) ++ pkgs.lib.optional (!_flags.sdl && !_flags.curses) hsPkgs.Unsatisfiable;
            libs = optionals (_flags.game && (_flags.sdl && system.isWindows)) ([
              pkgs.SDL_ttf
              pkgs.SDL
              pkgs.SDL_gfx
              pkgs.freetype
            ] ++ pkgs.lib.optional _flags.sound pkgs.SDL_mixer);
          };
          intricacy-server = {
            depends  = optionals _flags.server [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.stm
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.time
              hsPkgs.bytestring
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.binary
              hsPkgs.network-fancy
              hsPkgs.cryptohash
              hsPkgs.random
              hsPkgs.pipes
              hsPkgs.feed
              hsPkgs.xml
            ];
          };
        };
      };
    }