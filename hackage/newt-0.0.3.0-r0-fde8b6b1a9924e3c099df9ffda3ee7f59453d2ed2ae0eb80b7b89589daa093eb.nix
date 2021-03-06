let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { tests = false; };
    package = {
      specVersion = "1.8.0.6";
      identifier = { name = "newt"; version = "0.0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "creswick@gmail.com";
      author = "Rogan Creswick";
      homepage = "";
      url = "";
      synopsis = "A trivially simple app to create things from simple templates.";
      description = "Instantiates text things from templates.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."Unixutils" or (buildDepError "Unixutils"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ [
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "newt" = {
          depends = [
            (hsPkgs."newt" or (buildDepError "newt"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ] ++ [ (hsPkgs."containers" or (buildDepError "containers")) ];
          buildable = true;
          };
        "test-newt" = {
          depends = [
            (hsPkgs."newt" or (buildDepError "newt"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."Unixutils" or (buildDepError "Unixutils"))
            (hsPkgs."safe" or (buildDepError "safe"))
            ] ++ [
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if !flags.tests then false else true;
          };
        };
      };
    }