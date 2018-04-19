{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "exception-transformers";
          version = "0.3.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2010 Harvard University\n(c) 2011-2012 Geoffrey Mainland";
        maintainer = "mainland@eecs.harvard.edu";
        author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
        homepage = "http://www.eecs.harvard.edu/~mainland/";
        url = "";
        synopsis = "Type classes and monads for unchecked extensible exceptions.";
        description = "This package provides type classes, a monad and a monad\ntransformer that support unchecked extensible exceptions as\nwell as asynchronous exceptions. It is compatible with\nthe transformers package.";
        buildType = "Simple";
      };
      components = {
        exception-transformers = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.transformers
          ];
        };
        tests = {
          unit = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.exception-transformers
              hsPkgs.transformers
            ];
          };
        };
      };
    }