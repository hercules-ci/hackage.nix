{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hfann";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Olivier Boudry 2008, David Himmelstrup 2011";
        maintainer = "Lemmih <lemmih@gmail.com>";
        author = "David Himmelstrup, Olivier Boudry";
        homepage = "";
        url = "";
        synopsis = "Haskell binding to the FANN library";
        description = "hfann is a Haskell binding to the Fast Artificial Neural\nNetwork (FANN) library <http://leenissen.dk/fann/>. It\nprovides functions to easily create, train, test and use\nArtificial Neural Networks.";
        buildType = "Simple";
      };
      components = {
        hfann = {
          depends  = [ hsPkgs.base ];
          libs = [
            pkgs.doublefann
            pkgs.m
          ];
        };
        exes = {
          HFANNTest = {
            depends  = [ hsPkgs.base ];
            libs = [
              pkgs.doublefann
              pkgs.m
            ];
          };
        };
      };
    }