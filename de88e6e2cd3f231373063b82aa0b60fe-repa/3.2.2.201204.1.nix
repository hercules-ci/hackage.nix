{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "repa";
          version = "3.2.2.201204.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The DPH Team";
        homepage = "http://repa.ouroborus.net";
        url = "";
        synopsis = "High performance, regular, shape polymorphic parallel arrays.";
        description = "Legacy version for Haskell Platform 2012.04. You will get better performance\nif you upgrade to the most recent version of GHC.\nRepa provides high performance, regular, multi-dimensional, shape polymorphic\nparallel arrays. All numeric data is stored unboxed. Functions written with\nthe Repa combinators are automatically parallel provided you supply\n+RTS -Nwhatever on the command line when running the program.";
        buildType = "Simple";
      };
      components = {
        repa = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.template-haskell
            hsPkgs.QuickCheck
          ];
        };
      };
    }