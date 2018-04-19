{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4.0";
        identifier = {
          name = "BiobaseInfernal";
          version = "0.0.2.1";
        };
        license = "GPL-3.0-only";
        copyright = "Christian Hoener zu Siederdissen, 2010";
        maintainer = "choener@tbi.univie.ac.at";
        author = "Christian Hoener zu Siederdissen";
        homepage = "http://www.tbi.univie.ac.at/~choener/Haskell/";
        url = "";
        synopsis = "(deprecated) Infernal CM manipulation";
        description = "This library provides functions to load Infernal covariance\nmodels. Models can be converted from score mode into\nprobability mode. They, too, can be switched into local mode.\nIn additon, Stockholm files can be loaded.";
        buildType = "Simple";
      };
      components = {
        BiobaseInfernal = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.Biobase
          ];
        };
      };
    }