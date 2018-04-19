{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      pedantic = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "overloaded-records";
          version = "0.4.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016, Peter Trško";
        maintainer = "peter.trsko@gmail.com";
        author = "Peter Trško";
        homepage = "https://github.com/trskop/overloaded-records";
        url = "";
        synopsis = "Overloaded Records based on current GHC proposal.";
        description = "Implementation of /Overloaded Record Fields/ based on current GHC proposal.\nIt is built on top of functionality that is included in GHC 8.0.1, but it\nworks on older GHC versions as well. Most importantly, this library provides\nTemplate Haskell functions for automatic deriving of instancess for\n@HasField@ and @ModifyField@ type classes. With these instances overloaded\nfields can be used directly as getters and lenses.\n\nSee README for usage examples.\n\nThis implementation is highly experimental and may change rapidly.\n\nMore about the current status of OverloadedRecordFields language extension\ncan be found on:\n<https://ghc.haskell.org/trac/ghc/wiki/Records/OverloadedRecordFields GHC Wiki: OverloadedRecordFields>.";
        buildType = "Simple";
      };
      components = {
        overloaded-records = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default-class
            hsPkgs.template-haskell
          ];
        };
        tests = {
          unit-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-default-class
              hsPkgs.template-haskell
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.overloaded-records
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.transformers;
          };
        };
      };
    }