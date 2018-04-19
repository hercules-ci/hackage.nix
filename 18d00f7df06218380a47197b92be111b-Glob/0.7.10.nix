{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "Glob";
          version = "0.7.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Matti Niemenmaa <matti.niemenmaa+glob@iki.fi>";
        author = "Matti Niemenmaa";
        homepage = "http://iki.fi/matti.niemenmaa/glob/";
        url = "";
        synopsis = "Globbing library";
        description = "A library for globbing: matching patterns against file paths.";
        buildType = "Simple";
      };
      components = {
        Glob = {
          depends  = ([
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.dlist
            hsPkgs.filepath
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups) ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
        };
        tests = {
          glob-tests = {
            depends  = ([
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.dlist
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups) ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
          };
        };
      };
    }