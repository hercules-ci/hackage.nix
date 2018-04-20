{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AC-Vector";
          version = "2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "MathematicalOrchid@hotmail.com";
        author = "Andrew Coppin";
        homepage = "";
        url = "";
        synopsis = "Efficient geometric vectors and transformations.";
        description = "This Haskell library implements several small vectors types\nwith @Double@ fields, with seperate types for each size of\nvector, and a type class for handling vectors generally.\nNow includes \\\"bounding box\\\" types, useful for graphical work.\n(Note that this package itself has no graphics facilities as\nsuch. It just provides data structures useful for graphics.)";
        buildType = "Simple";
      };
      components = {
        AC-Vector = {
          depends  = [ hsPkgs.base ];
        };
      };
    }