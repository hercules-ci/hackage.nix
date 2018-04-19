{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-coroutine";
          version = "0.8";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2010-2012 Mario Blazevic";
        maintainer = "blamario@yahoo.com";
        author = "Mario Blazevic";
        homepage = "http://trac.haskell.org/SCC/wiki/monad-coroutine";
        url = "";
        synopsis = "Coroutine monad transformer for suspending and resuming monadic computations";
        description = "This package defines a monad transformer, applicable to any monad, that allows the monadic computation to suspend and\nto be later resumed. The transformer is parameterized by an arbitrary functor, used to store the suspended\ncomputation's resumption.";
        buildType = "Simple";
      };
      components = {
        monad-coroutine = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.monad-parallel
          ];
        };
      };
    }