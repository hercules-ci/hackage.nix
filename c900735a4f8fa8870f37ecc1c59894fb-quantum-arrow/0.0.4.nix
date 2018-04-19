{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "quantum-arrow";
          version = "0.0.4";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "";
        url = "";
        synopsis = "An embedding of quantum computation as a Haskell arrow";
        description = "This module is a loose port of the Quantum::Entanglement\nPerl module, which endows its host language with quantum-computationesque\neffects.  In this Haskell version this is done using an\narrow to take advantage of the arrow syntax for imperative-looking\ncode.  The module has all the fun bells and whistles of quantum\ncomputation, including entanglement and interference, even through\nconditionals (which the Perl analog does not support).  The arrow\nis defined over any instance of MonadRandom, so if you want to\nget especially crazy, you can experiment with what quantum computation\nis like when observables include invoking continuations.\nSee the included example.hs for some simple examples of what\nusing this module looks like.";
        buildType = "Simple";
      };
      components = {
        quantum-arrow = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.MonadRandom
          ];
        };
      };
    }