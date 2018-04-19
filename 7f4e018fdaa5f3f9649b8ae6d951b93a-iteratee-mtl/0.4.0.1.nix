{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "iteratee-mtl";
          version = "0.4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John W. Lato <jwlato@gmail.com>";
        author = "Oleg Kiselyov, John W. Lato";
        homepage = "http://inmachina.net/~jwlato/haskell/iteratee";
        url = "";
        synopsis = "Iteratee-based I/O";
        description = "The Iteratee monad provides strict, safe, and functional I/O. In addition\nto pure Iteratee processors, file IO and combinator functions are provided.";
        buildType = "Simple";
      };
      components = {
        iteratee-mtl = {
          depends  = ([
            hsPkgs.ListLike
            hsPkgs.MonadCatchIO-mtl
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
          ] ++ [
            hsPkgs.base
          ]) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        exes = {
          testIteratee = {
            depends  = optionals _flags.buildtests [
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ] ++ [ hsPkgs.base ];
          };
        };
      };
    }