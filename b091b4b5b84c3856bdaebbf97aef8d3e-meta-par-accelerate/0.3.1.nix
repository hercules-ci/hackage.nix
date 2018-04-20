{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      newaccelerate = false;
      cuda = false;
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "meta-par-accelerate";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Adam Foltzer 2011-2012";
        maintainer = "Ryan Newton <rrnewton@gmail.com>";
        author = "Ryan Newton, Adam Foltzer 2011-2012";
        homepage = "https://github.com/simonmar/monad-par";
        url = "";
        synopsis = "Support for integrated Accelerate computations within Meta-par.";
        description = "This package provides a 'Control.Monad.Par.Meta.Resource' for building meta-par\n(<hackage.haskell.org/package/meta-par>) schedulers with GPU support.\nThis package also provides a complete scheduler for CPU plus GPU\nexecution.  It supports the 'Control.Monad.Par.Par' monad\nprogramming model with additional support for GPUs.";
        buildType = "Simple";
      };
      components = {
        meta-par-accelerate = {
          depends  = ([
            hsPkgs.base
            hsPkgs.abstract-par
            hsPkgs.meta-par
            hsPkgs.abstract-deque
            hsPkgs.abstract-par-accelerate
            hsPkgs.QuickCheck
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.array
          ] ++ pkgs.lib.optional (_flags.newaccelerate && _flags.cuda) hsPkgs.accelerate-cuda) ++ (if _flags.newaccelerate
            then [
              hsPkgs.accelerate
              hsPkgs.accelerate-io
            ]
            else [ hsPkgs.accelerate ]);
        };
      };
    }