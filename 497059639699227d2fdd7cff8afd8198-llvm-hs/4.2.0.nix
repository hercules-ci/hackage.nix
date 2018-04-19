{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      shared-llvm = true;
      debug = false;
      semigroups = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "llvm-hs";
          version = "4.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 Benjamin S. Scarlet and Google Inc.";
        maintainer = "Anthony Cowley, Stephen Diehl, Moritz Kiefer <moritz.kiefer@purelyfunctional.org>";
        author = "Anthony Cowley, Stephen Diehl, Moritz Kiefer <moritz.kiefer@purelyfunctional.org>, Benjamin S. Scarlet";
        homepage = "http://github.com/llvm-hs/llvm-hs/";
        url = "";
        synopsis = "General purpose LLVM bindings";
        description = "llvm-hs is a set of Haskell bindings for LLVM <http://llvm.org/>. Unlike other current Haskell bindings,\nit uses an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>), and so offers two advantages: it\nhandles almost all of the stateful complexities of using the LLVM API to build IR; and it supports moving IR not\nonly from Haskell into LLVM C++ objects, but the other direction - from LLVM C++ into Haskell.";
        buildType = "Custom";
      };
      components = {
        llvm-hs = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.exceptions
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.llvm-hs-pure
          ] ++ (if _flags.semigroups
            then [
              hsPkgs.base
              hsPkgs.semigroups
            ]
            else [ hsPkgs.base ]);
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.llvm-hs
              hsPkgs.llvm-hs-pure
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.temporary
              hsPkgs.pretty-show
            ] ++ (if _flags.semigroups
              then [
                hsPkgs.base
                hsPkgs.semigroups
              ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }