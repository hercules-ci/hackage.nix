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
      identifier = { name = "baserock-schema"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Daniel Firth";
      maintainer = "locallycompact@gmail.com";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Baserock Definitions Schema";
      description = "Baserock Definitions Schema - Parsers, Printers, Encoders, Decoders, ASTs, Graphs and Traversals";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."algebraic-graphs" or (buildDepError "algebraic-graphs"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."flippers" or (buildDepError "flippers"))
          (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."rio" or (buildDepError "rio"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."yaml-pretty-extras" or (buildDepError "yaml-pretty-extras"))
          ];
        buildable = true;
        };
      exes = {
        "baserock" = {
          depends = [
            (hsPkgs."algebraic-graphs" or (buildDepError "algebraic-graphs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."baserock-schema" or (buildDepError "baserock-schema"))
            (hsPkgs."docopt" or (buildDepError "docopt"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."flippers" or (buildDepError "flippers"))
            (hsPkgs."gitlab-api" or (buildDepError "gitlab-api"))
            (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."yaml-pretty-extras" or (buildDepError "yaml-pretty-extras"))
            ];
          buildable = true;
          };
        };
      tests = {
        "earthquake-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebraic-graphs" or (buildDepError "algebraic-graphs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."baserock-schema" or (buildDepError "baserock-schema"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."flippers" or (buildDepError "flippers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."yaml-pretty-extras" or (buildDepError "yaml-pretty-extras"))
            ];
          buildable = true;
          };
        };
      };
    }