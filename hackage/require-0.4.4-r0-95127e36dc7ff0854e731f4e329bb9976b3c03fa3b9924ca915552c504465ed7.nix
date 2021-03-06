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
      specVersion = "1.12";
      identifier = { name = "require"; version = "0.4.4"; };
      license = "Apache-2.0";
      copyright = "2018 Theam";
      maintainer = "hackers@theam.io";
      author = "The Agile Monkeys";
      homepage = "https://github.com/theam/require#readme";
      url = "";
      synopsis = "Scrap your qualified import clutter";
      description = "See <https://theam.github.io/require>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."inliterate" or (buildDepError "inliterate"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."universum" or (buildDepError "universum"))
          ];
        buildable = true;
        };
      exes = {
        "autorequirepp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."inliterate" or (buildDepError "inliterate"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."require" or (buildDepError "require"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."universum" or (buildDepError "universum"))
            ];
          buildable = true;
          };
        "requirepp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."inliterate" or (buildDepError "inliterate"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."require" or (buildDepError "require"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."universum" or (buildDepError "universum"))
            ];
          buildable = true;
          };
        };
      tests = {
        "require-test-suite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."inliterate" or (buildDepError "inliterate"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."require" or (buildDepError "require"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."universum" or (buildDepError "universum"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "require-benchmarks" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."inliterate" or (buildDepError "inliterate"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."require" or (buildDepError "require"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."universum" or (buildDepError "universum"))
            ];
          buildable = true;
          };
        };
      };
    }