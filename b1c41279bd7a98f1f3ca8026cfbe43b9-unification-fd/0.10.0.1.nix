{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "unification-fd";
          version = "0.10.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007--2015 wren gayle romano";
        maintainer = "wren@community.haskell.org";
        author = "wren gayle romano";
        homepage = "http://code.haskell.org/~wren/";
        url = "";
        synopsis = "Simple generic unification algorithms.";
        description = "Simple generic unification algorithms.";
        buildType = "Simple";
      };
      components = {
        unification-fd = {
          depends  = ([
            hsPkgs.logict
            hsPkgs.base
            hsPkgs.mtl
          ] ++ [
            hsPkgs.base
          ]) ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.containers
            ]
            else [ hsPkgs.base ]);
        };
      };
    }