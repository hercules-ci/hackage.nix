{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cplex-hs";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Greg Horn 2012-2013, Stefan Jacholke 2016";
        maintainer = "Stefan Jacholke <stefanj@encrunch.com>";
        author = "Greg Horn, Stefan Jacholke";
        homepage = "https://github.com/stefan-j/cplex-haskell";
        url = "";
        synopsis = "high-level CPLEX interface";
        description = "High level interface to CPLEX";
        buildType = "Simple";
      };
      components = {
        cplex-hs = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.primitive
            hsPkgs.transformers
            hsPkgs.vector
          ];
          libs = optionals system.isLinux [
            pkgs.cplex
            pkgs.m
            pkgs.pthread
          ];
        };
      };
    }