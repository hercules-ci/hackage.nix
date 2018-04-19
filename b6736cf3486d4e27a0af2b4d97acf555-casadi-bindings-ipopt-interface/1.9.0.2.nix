{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "casadi-bindings-ipopt-interface";
          version = "1.9.0.2";
        };
        license = "LGPL-3.0-only";
        copyright = "(c) 2013-2014 Greg Horn";
        maintainer = "gregmainland@gmail.com";
        author = "Greg Horn";
        homepage = "";
        url = "";
        synopsis = "low level bindings to casadi-ipopt_interface";
        description = "see <http://hackage.haskell.org/package/casadi-bindings http://hackage.haskell.org/package/casadi-bindings> for all instructions";
        buildType = "Simple";
      };
      components = {
        casadi-bindings-ipopt-interface = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.casadi-bindings-core
            hsPkgs.casadi-bindings-internal
          ];
          libs = [ pkgs."stdc++" ];
        };
      };
    }