{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "casadi-bindings-core";
          version = "2.4.1.0";
        };
        license = "LGPL-3.0-only";
        copyright = "(c) 2013-2015 Greg Horn";
        maintainer = "gregmainland@gmail.com";
        author = "Greg Horn";
        homepage = "";
        url = "";
        synopsis = "autogenerated low level bindings to casadi";
        description = "see <http://hackage.haskell.org/package/casadi-bindings http://hackage.haskell.org/package/casadi-bindings> for all instructions";
        buildType = "Simple";
      };
      components = {
        casadi-bindings-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.casadi-bindings-internal
          ];
          libs = [ pkgs."stdc++" ];
          pkgconfig = [
            pkgconfPkgs.casadi
          ];
        };
      };
    }