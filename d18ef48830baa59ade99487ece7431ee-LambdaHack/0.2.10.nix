{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      gtk = false;
      vty = false;
      curses = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "LambdaHack";
          version = "0.2.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
        author = "Andres Loeh, Mikolaj Konarski";
        homepage = "http://github.com/kosmikus/LambdaHack";
        url = "";
        synopsis = "A roguelike game engine in early and active development";
        description = "This is an alpha release of LambdaHack,\na game engine library for roguelike games\nof arbitrary theme, size and complexity,\npackaged together with a small example dungeon crawler.\nWhen completed, the engine will let you specify content\nto be procedurally generated, define the AI behaviour\non top of the generic content-independent rules\nand compile a ready-to-play game binary, using either\nthe supplied or a custom-made main loop.\nSeveral frontends are available (GTK is the default)\nand many other generic engine components are easily overridden,\nbut the fundamental source of flexibility lies\nin the strict and type-safe separation of code and content\nand of clients (human and AI-controlled) and server.\n\nNew in this release are screensaver game modes (AI vs AI),\nimproved AI (can now climbs stairs, etc.), multiple,\nmulti-floor staircases, multiple savefiles, configurable\nframerate and combat animations and more.\nUpcoming features: new and improved frontends, improved AI\n(pathfinding, autoexplore, better ranged combat), dynamic\nlight sources, explosions, player action undo/redo, completely\nredesigned UI. Long term goals are focused on procedural\ncontent generation and include in-game content creation,\nauto-balancing and persistent content modification\nbased on player behaviour.\n\nA larger game that depends on the LambdaHack library\nis Allure of the Stars, available from\n<http://hackage.haskell.org/package/Allure>.\n\nNote: All modules in this library are kept visible,\nto let games override and reuse them.\nOTOH, to reflect that some modules are implementation details\nrelative to others, the source code adheres to the following\nconvention. If a module has the same name as a directory,\nthe module is the exclusive interface to the directory.\nNo references to the modules in the directory are allowed\nexcept from the interface module. This policy is only binding\ninside the library --- users are free to do whatever they\nplease, since the library authors are in no position to guess\ntheir particular needs.";
        buildType = "Simple";
      };
      components = {
        LambdaHack = {
          depends  = [
            hsPkgs.ConfigFile
            hsPkgs.array
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.enummapset
            hsPkgs.filepath
            hsPkgs.ghc-prim
            hsPkgs.hashable
            hsPkgs.keys
            hsPkgs.miniutter
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.pretty-show
            hsPkgs.random
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.zlib
          ] ++ (if _flags.gtk
            then [ hsPkgs.gtk ]
            else if _flags.vty
              then [ hsPkgs.vty ]
              else if _flags.curses
                then [ hsPkgs.hscurses ]
                else [ hsPkgs.gtk ]);
        };
        exes = {
          LambdaHack = {
            depends  = [
              hsPkgs.LambdaHack
              hsPkgs.template-haskell
              hsPkgs.ConfigFile
              hsPkgs.array
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.enummapset
              hsPkgs.filepath
              hsPkgs.ghc-prim
              hsPkgs.hashable
              hsPkgs.keys
              hsPkgs.miniutter
              hsPkgs.mtl
              hsPkgs.old-time
              hsPkgs.random
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.zlib
            ];
          };
        };
      };
    }