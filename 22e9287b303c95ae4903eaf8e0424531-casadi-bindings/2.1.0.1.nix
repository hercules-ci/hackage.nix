{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "casadi-bindings";
          version = "2.1.0.1";
        };
        license = "LGPL-3.0-only";
        copyright = "(c) Greg Horn 2013-2014";
        maintainer = "gregmainland@gmail.com";
        author = "Greg Horn";
        homepage = "http://github.com/ghorn/casadi-bindings";
        url = "";
        synopsis = "mid-level bindings to CasADi";
        description = "Haskell bindings to the CasADi algorithmic differentiation and optimal control library.\nVersion numbers correspond to the C++ library version numbers except the very last number\nwhich may indicate breaking changes.\n\nThis package is a mid-level interface to the low-level bindings `casadi-bindings-core`.\n\nThe `casadi-bindings-internal` package is handwritten and provides some casadi memory management\nwrappers and C++ standard type marsahalling.\n\nThe module `casadi-bindings-core` is autogenerated\nfrom casadi's swig interface and corresponds to the casadi C++ API\n(though some functions will be missing).\n\nFor high-level bindings, see my <https://github.com/ghorn/dynobud dynobud> project\n\nThe current instructions for getting started on Debian/Ubuntu:\n\nInstall casadi from source or with apt-get for debian or homebrew for osx (IN PROGRESS)\n\n>> apt-get install libcasadi*\n\nThen cabal install this package\n\n>> cabal update; cabal install casadi-bindings";
        buildType = "Simple";
      };
      components = {
        casadi-bindings = {
          depends  = [
            hsPkgs.base
            hsPkgs.linear
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.casadi-bindings-internal
            hsPkgs.casadi-bindings-core
          ];
        };
      };
    }