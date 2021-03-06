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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "super-user-spark"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "";
      url = "";
      synopsis = "Configure your dotfile deployment with a DSL.";
      description = "Configure your dotfile deployment with a DSL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."validity" or (buildDepError "validity"))
          (hsPkgs."validity-path" or (buildDepError "validity-path"))
          (hsPkgs."path" or (buildDepError "path"))
          (hsPkgs."path-io" or (buildDepError "path-io"))
          (hsPkgs."iostring" or (buildDepError "iostring"))
          ];
        buildable = true;
        };
      exes = {
        "super-user-spark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."super-user-spark" or (buildDepError "super-user-spark"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spark-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."super-user-spark" or (buildDepError "super-user-spark"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."genvalidity" or (buildDepError "genvalidity"))
            (hsPkgs."genvalidity-path" or (buildDepError "genvalidity-path"))
            (hsPkgs."genvalidity-hspec" or (buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-aeson" or (buildDepError "genvalidity-hspec-aeson"))
            (hsPkgs."validity" or (buildDepError "validity"))
            (hsPkgs."validity-path" or (buildDepError "validity-path"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."iostring" or (buildDepError "iostring"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            ];
          buildable = true;
          };
        };
      };
    }