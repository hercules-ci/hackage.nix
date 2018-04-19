{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "elision";
          version = "0.1.3.0";
        };
        license = "BSD-2-Clause";
        copyright = "2016 Alex Crough";
        maintainer = "alex@crough.io";
        author = "Alex Crough";
        homepage = "http://github.com/crough/elision#readme";
        url = "";
        synopsis = "Arrows with holes.";
        description = "A framework for describing holes in transformations\nand impure computations purely.";
        buildType = "Simple";
      };
      components = {
        elision = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec
            hsPkgs.profunctors
            hsPkgs.QuickCheck
          ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.elision
            ];
          };
        };
      };
    }