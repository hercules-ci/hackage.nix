{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "blosum";
          version = "0.1.1.4";
        };
        license = "GPL-2.0-only";
        copyright = "Copyright 2016 Gregory W. Schwartz";
        maintainer = "gregory.schwartz@drexel.edu";
        author = "Gregory W. Schwartz";
        homepage = "http://github.com/GregorySchwartz/blosum#readme";
        url = "";
        synopsis = "BLOSUM generator";
        description = "Generates BLOSUMs for use with finding the degree of amino acid conservation.";
        buildType = "Simple";
      };
      components = {
        blosum = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.text-show
            hsPkgs.fasta
            hsPkgs.lens
          ];
        };
        exes = {
          blosum = {
            depends  = [
              hsPkgs.base
              hsPkgs.blosum
              hsPkgs.containers
              hsPkgs.fasta
              hsPkgs.text
              hsPkgs.split
              hsPkgs.pipes
              hsPkgs.pipes-text
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }