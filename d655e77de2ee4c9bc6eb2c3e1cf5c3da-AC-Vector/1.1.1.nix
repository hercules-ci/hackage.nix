{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AC-Vector";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "MathematicalOrchid@hotmail.com";
        author = "Andrew Coppin";
        homepage = "";
        url = "";
        synopsis = "Efficient geometric vectors.";
        description = "This Haskell library implements several small vectors types\nwith @Double@ fields, with seperate types for each size of\nvector, and a type class for handling vectors generally.";
        buildType = "Simple";
      };
      components = {
        AC-Vector = {
          depends  = [ hsPkgs.base ];
        };
      };
    }