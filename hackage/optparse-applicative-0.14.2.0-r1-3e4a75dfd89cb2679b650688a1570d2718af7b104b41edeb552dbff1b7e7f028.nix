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
      specVersion = "1.8";
      identifier = { name = "optparse-applicative"; version = "0.14.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2017 Paolo Capriotti <paolo@capriotti.io>";
      maintainer = "huw.campbell@gmail.com";
      author = "Paolo Capriotti, Huw Campbell";
      homepage = "https://github.com/pcapriotti/optparse-applicative";
      url = "";
      synopsis = "Utilities and combinators for parsing command line options";
      description = "optparse-applicative is a haskell library for parsing options\non the command line, providing a powerful applicative interface\nfor composing these options.\n\noptparse-applicative takes care of reading and validating the\narguments passed to the command line, handling and reporting\nerrors, generating a usage line, a comprehensive help screen,\nand enabling context-sensitive bash completions.\n\nSee the included README for detailed instructions and examples,\nwhich is also available on github\n<https://github.com/pcapriotti/optparse-applicative>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8")) [
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."fail" or (buildDepError "fail"))
          ];
        buildable = true;
        };
      tests = {
        "optparse-applicative-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8")) (hsPkgs."semigroups" or (buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }