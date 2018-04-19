{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "exception-monads-tf";
          version = "0.3.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2010 Harvard University\n(c) 2011-2012 Geoffrey Mainland";
        maintainer = "mainland@eecs.harvard.edu";
        author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
        homepage = "http://www.eecs.harvard.edu/~mainland/";
        url = "";
        synopsis = "Exception monad transformer instances for monads-tf classes.";
        description = "This package provides exception monad transformer instances for\nthe classes defined by monads-tf.";
        buildType = "Simple";
      };
      components = {
        exception-monads-tf = {
          depends  = [
            hsPkgs.base
            hsPkgs.exception-transformers
            hsPkgs.monads-tf
            hsPkgs.transformers
          ];
        };
      };
    }