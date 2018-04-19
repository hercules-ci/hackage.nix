{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      no-link = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sifflet";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2009-2010 Gregory D. Weber";
        maintainer = "\"gdweber\" ++ drop 3 \"abc@\" ++ \"iue.edu\"";
        author = "Gregory D. Weber";
        homepage = "http://mypage.iu.edu/~gdweber/software/sifflet/";
        url = "";
        synopsis = "A simple, visual, functional programming language.";
        description = "Sifflet is a visual, functional programming language.\nSifflet users can make programs by drawing diagrams\nto connect functions and other units.\nSifflet show the intermediate steps of the computation\non the diagram, and can expand function calls to show further details.\nIt is intended as an aid for learning about recursion.";
        buildType = "Simple";
      };
      components = {
        exes = {
          sifflet = {
            depends  = [
              hsPkgs.base
              hsPkgs.cairo
              hsPkgs.glib
              hsPkgs.gtk
              hsPkgs.containers
              hsPkgs.fgl
              hsPkgs.haskell98
              hsPkgs.hxt
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.sifflet-lib
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
      };
    }