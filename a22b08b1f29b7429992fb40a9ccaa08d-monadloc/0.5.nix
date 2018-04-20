{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      syb-in-base = false;
      mtl = true;
      transformers = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monadloc";
          version = "0.5";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "pepeiborra@gmail.com";
        author = "Pepe Iborra";
        homepage = "http://github.com/pepeiborra/monadloc";
        url = "";
        synopsis = "A class for monads which can keep a monadic call trace";
        description = "This package defines a class for monads which can keep a monadic call trace.\n\n* See the blog post <http://pepeiborra.posterous.com/monadic-stack-traces-that-make-a-lot-of-sense> for more information.\n\nA preprocessor is provided which can insert calls\nto \"Control.Monad.Loc.withLoc\" before every monadic statement in a module.\nTo invoke the preprocessor, add the pragma @OPTIONS_GHC -F -pgmF MonadLoc@  at the top of your Haskell files  together with an import for the \"Control.Monad.Loc\" module\n\nThis package provides no implementation of the \"Control.Monad.Loc.MonadLoc\" interface.\nCurrently the only package that does so is @control-monad-exception@,\nbut any other package can implement it and provide monadic call traces.";
        buildType = "Simple";
      };
      components = {
        monadloc = {
          depends  = (([
            hsPkgs.pretty
            hsPkgs.template-haskell
          ] ++ (if _flags.syb-in-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.syb
            ])) ++ pkgs.lib.optional _flags.mtl hsPkgs.mtl) ++ pkgs.lib.optional _flags.transformers hsPkgs.transformers;
        };
        exes = {
          MonadLoc = {
            depends  = [
              hsPkgs.haskell-src-exts
            ];
          };
        };
      };
    }