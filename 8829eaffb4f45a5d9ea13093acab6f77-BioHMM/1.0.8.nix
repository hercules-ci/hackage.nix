{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "BioHMM";
          version = "1.0.8";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "egg@tbi.univie.ac.at";
        author = "Florian Eggenhofer";
        homepage = "";
        url = "";
        synopsis = "Libary for Hidden Markov Models in HMMER3 format.";
        description = "Libary containing parsing and visualisation functions and datastructures for Hidden Markov Models in HMMER3 format.";
        buildType = "Simple";
      };
      components = {
        BioHMM = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.diagrams-lib
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.ParsecTools
            hsPkgs.diagrams-cairo
            hsPkgs.filepath
            hsPkgs.colour
            hsPkgs.directory
            hsPkgs.either-unwrap
            hsPkgs.SVGFonts
            hsPkgs.StockholmAlignment
          ];
        };
      };
    }