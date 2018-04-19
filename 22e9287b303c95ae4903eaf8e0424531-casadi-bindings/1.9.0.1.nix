{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "casadi-bindings";
          version = "1.9.0.1";
        };
        license = "LGPL-3.0-only";
        copyright = "(c) Greg Horn 2013-2014";
        maintainer = "gregmainland@gmail.com";
        author = "Greg Horn";
        homepage = "http://github.com/ghorn/casadi-bindings";
        url = "";
        synopsis = "low level bindings to CasADi";
        description = "Haskell bindings to the CasADi algorithmic differentiation and optimal control library.\nVersion numbers correspond to the C++ library version numbers except the very last number\nwhich may indicate breaking changes.\n\nThis is a metapackage which also hosts the installation instructions. The purpose is that\nusers of the library will always be able to \"cabal install casadi-bindings\" and have things\nJust Work, though you may need to install additional add-on modules manually.\n\nThe `casadi-bindings-internal` package is handwritten and provides some casadi memory management\nwrappers and C++ standard type marsahalling.\n\nThe rest of the modules like `casadi-bindings-core`, `casadi-bindings-ipopt-interface`, etc\nare autogenerated from casadi's swig interface and correspond exactly to the casadi C++ API.\n\nFor high-level bindings, see my `https://github.com/ghorn/dynobud` project\n\nThe current instructions for getting started on Debian/Ubuntu:\n\nInstall libcasadi-shared from https://github.com/casadi/casadi/releases/latest,\nfirst download it from that website, then:\n\n>> dpkg -i libcasadi-shared.deb\n\n>> cabal update; cabal install casadi-bindings\n\nto install the ipopt interface:\n\n>> apt-get install coinor-libipopt-dev\n\n>> cabal install casadi-bindings-ipopt-interface\n\nTemporary note: there is something wrong with casadi and ipopt related\nto http://list.coin-or.org/pipermail/ipopt/2014-April/003670.html,\nand https://github.com/casadi/casadi/issues/1075.\nAt the moment this .cabal package works for me as is, but YMMV\n\nI only officially support debian/ubuntu right now, but I have gotten it working on OSX\nin the past. Everything is done with pkg-config and LD_LIBRARY_PATH, so there's no reason\nI know that there should be problems.";
        buildType = "Simple";
      };
      components = {
        casadi-bindings = {
          depends  = [
            hsPkgs.casadi-bindings-internal
            hsPkgs.casadi-bindings-core
          ];
        };
      };
    }