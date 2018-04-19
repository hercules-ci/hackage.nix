{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wikipedia4epub";
          version = "0.0.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "radoslav.dorcik@gmail.com";
        author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
        homepage = "http://rampa.sk/static/wikipedia4epub.html";
        url = "";
        synopsis = "Wikipedia EPUB E-Book construction from Firefox history.";
        description = "\nWikipedia EPUB E-Book construction from Firefox History.\nIt dumps history and select only wikipedia articles, fetch\nthem and strip thier content before put into EPUB book\nfor E-Book readers.\n";
        buildType = "Simple";
      };
      components = {
        wikipedia4epub = {
          depends  = [
            hsPkgs.ghc
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.haskell98
            hsPkgs.url
            hsPkgs.directory
            hsPkgs.epub
            hsPkgs.regex-posix
            hsPkgs.network
            hsPkgs.regex-base
            hsPkgs.HDBC-sqlite3
            hsPkgs.HDBC
            hsPkgs.tagsoup
            hsPkgs.HTTP
            hsPkgs.zip-archive
            hsPkgs.zlib
            hsPkgs.xml
            hsPkgs.Cabal
          ];
        };
        exes = {
          wiki4e-mkepub-firefox = {};
          wiki4e-mkepub-subtree = {};
          wiki4e-mkepub-cache = {};
        };
      };
    }