{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "terminal-size";
          version = "0.3.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "matvey.aksenov@gmail.com";
        author = "Andreas Hammar, Matvey Aksenov";
        homepage = "";
        url = "";
        synopsis = "Get terminal window height and width";
        description = "Get terminal window height and width without ncurses dependency.";
        buildType = "Simple";
      };
      components = {
        terminal-size = {
          depends  = ([
            hsPkgs.base
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim) ++ pkgs.lib.optional system.isWindows hsPkgs.process;
        };
      };
    }