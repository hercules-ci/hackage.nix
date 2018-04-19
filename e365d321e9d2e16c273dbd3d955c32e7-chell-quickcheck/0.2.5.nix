{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "chell-quickcheck";
          version = "0.2.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Millikin <john@john-millikin.com>";
        author = "John Millikin <john@john-millikin.com>";
        homepage = "https://john-millikin.com/software/chell/";
        url = "";
        synopsis = "QuickCheck support for the Chell testing library";
        description = "";
        buildType = "Simple";
      };
      components = {
        chell-quickcheck = {
          depends  = [
            hsPkgs.base
            hsPkgs.chell
            hsPkgs.QuickCheck
            hsPkgs.random
          ];
        };
      };
    }