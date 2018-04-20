{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "exception-monads-tf";
          version = "0.4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2010 Harvard University\n(c) 2011-2017 Geoffrey Mainland";
        maintainer = "Geoffrey Mainland <mainland@drexel.edu>";
        author = "Geoffrey Mainland <mainland@drexel.edu>";
        homepage = "";
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