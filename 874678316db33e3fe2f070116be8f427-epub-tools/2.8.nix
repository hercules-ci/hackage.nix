{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "epub-tools";
          version = "2.8";
        };
        license = "BSD-3-Clause";
        copyright = "2008-2015 Dino Morelli";
        maintainer = "Dino Morelli <dino@ui3.info>";
        author = "Dino Morelli";
        homepage = "http://hub.darcs.net/dino/epub-tools";
        url = "";
        synopsis = "Command line utilities for working with epub files";
        description = "A suite of command-line utilities for creating and manipulating epub book files. Included are: epubmeta, epubname, epubzip";
        buildType = "Simple";
      };
      components = {
        exes = {
          epubmeta = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.epub-metadata
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.zip-archive
            ];
          };
          epubname = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.epub-metadata
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.regex-compat
            ];
          };
          epubzip = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.epub-metadata
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.regex-compat
            ];
          };
        };
        tests = {
          epubname-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.epub-metadata
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.regex-compat
            ];
          };
        };
      };
    }