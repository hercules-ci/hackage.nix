{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      runtimegecode = false;
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monadiccp";
          version = "0.7.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tom.schrijvers@ugent.be";
        author = "Tom Schrijvers, Pieter Wuille";
        homepage = "http://users.ugent.be/~tschrijv/MCP/";
        url = "";
        synopsis = "Constraint Programming";
        description = "Monadic Constraint Programming framework";
        buildType = "Simple";
      };
      components = {
        monadiccp = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.haskell98
            hsPkgs.random
            hsPkgs.pretty
            hsPkgs.parsec
          ];
          libs = pkgs.lib.optionals _flags.runtimegecode [
            pkgs.gecodesupport
            pkgs.gecodeset
            pkgs.gecodeint
            pkgs.gecodekernel
            pkgs.gecodesearch
          ];
          frameworks = pkgs.lib.optional _flags.runtimegecode pkgs.gecode;
        };
      };
    }