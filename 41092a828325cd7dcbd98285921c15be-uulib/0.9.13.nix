{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      have_ghc_prim = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "uulib";
          version = "0.9.13";
        };
        license = "LicenseRef-LGPL";
        copyright = "Universiteit Utrecht";
        maintainer = "Arie Middelkoop <ariem@cs.uu.nl>";
        author = "";
        homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
        url = "";
        synopsis = "Haskell Utrecht Tools Library";
        description = "Fast Parser Combinators and Pretty Printing Combinators";
        buildType = "Simple";
      };
      components = {
        uulib = {
          depends  = [
            hsPkgs.haskell98
          ] ++ (if _flags.have_ghc_prim
            then [
              hsPkgs.base
              hsPkgs.ghc-prim
            ]
            else [ hsPkgs.base ]);
        };
      };
    }