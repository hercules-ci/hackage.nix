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
      identifier = { name = "ariadne"; version = "0.1.2.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "";
      author = "Roman Cheplyaka";
      homepage = "https://github.com/feuerbach/ariadne";
      url = "";
      synopsis = "Go-to-definition for Haskell";
      description = "See <https://github.com/feuerbach/ariadne#ariadne>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ariadne-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-names" or (buildDepError "haskell-names"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."haskell-packages" or (buildDepError "haskell-packages"))
            (hsPkgs."hse-cpp" or (buildDepError "hse-cpp"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bert" or (buildDepError "bert"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."data-lens" or (buildDepError "data-lens"))
            (hsPkgs."data-lens-fd" or (buildDepError "data-lens-fd"))
            (hsPkgs."data-lens-template" or (buildDepError "data-lens-template"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."bert" or (buildDepError "bert"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }