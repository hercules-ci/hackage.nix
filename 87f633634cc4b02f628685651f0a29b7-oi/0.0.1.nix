{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "oi";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nobsun@sampou.org";
        author = "Nobuo Yamashita";
        homepage = "";
        url = "";
        synopsis = "Purely Functional Lazy Interaction with the outer world";
        description = "This package implements a data structure and operations on it\nfor making interactive program without using explicitly IO monads.";
        buildType = "Simple";
      };
      components = {
        oi = {
          depends  = [
            hsPkgs.base
            hsPkgs.parallel
            hsPkgs.comonad
          ];
        };
      };
    }