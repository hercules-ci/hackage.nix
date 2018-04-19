{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "persistable-record";
          version = "0.6.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013-2017 Kei Hibino";
        maintainer = "ex8k.hibino@gmail.com";
        author = "Kei Hibino";
        homepage = "http://khibino.github.io/haskell-relational-record/";
        url = "";
        synopsis = "Binding between SQL database values and haskell records.";
        description = "This package contiains types to represent table constraints and\ninterfaces to bind between SQL database values and Haskell records.";
        buildType = "Simple";
      };
      components = {
        persistable-record = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.th-data-compat
            hsPkgs.product-isomorphic
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.dlist
            hsPkgs.names-th
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        tests = {
          nested = {
            depends  = [
              hsPkgs.base
              hsPkgs.quickcheck-simple
              hsPkgs.persistable-record
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
          };
        };
      };
    }