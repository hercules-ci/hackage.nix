{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "blastxml";
          version = "0.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "ketil@malde.org";
        author = "Ketil Malde";
        homepage = "http://biohaskell.org/";
        url = "";
        synopsis = "Library for reading Blast XML output";
        description = "This library contains a data structure and functions for\nreading output from the BLAST sequence alignment program.";
        buildType = "Simple";
      };
      components = {
        blastxml = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.parallel
            hsPkgs.tagsoup
          ];
        };
      };
    }