{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      runtimegecode = false;
      debug = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monadiccp";
          version = "0.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tom.schrijvers@cs.kuleuven.be";
        author = "Tom Schrijvers, Pieter Wuille";
        homepage = "http://www.cs.kuleuven.be/~toms/MCP/";
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
            hsPkgs.Monatron
          ];
          libs = optionals _flags.runtimegecode [
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