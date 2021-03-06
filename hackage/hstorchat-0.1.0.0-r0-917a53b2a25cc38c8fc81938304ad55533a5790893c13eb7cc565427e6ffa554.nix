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
      identifier = { name = "hstorchat"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2014 Christopher Reichert";
      maintainer = "creichert07@gmail.com";
      author = "Christopher Reichert";
      homepage = "";
      url = "";
      synopsis = "Distributed instant messaging over Tor";
      description = "A Distributed instant messaging application built on Tor Hidden Services.\nCompatible with the original TorChat client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."socks" or (buildDepError "socks"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."hsqml" or (buildDepError "hsqml"))
          (hsPkgs."safecopy" or (buildDepError "safecopy"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."socks" or (buildDepError "socks"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "hstorchat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."hstorchat" or (buildDepError "hstorchat"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."hsqml" or (buildDepError "hsqml"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hstorchat-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hstorchat" or (buildDepError "hstorchat"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }