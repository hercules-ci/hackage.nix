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
    flags = { in-ghc-tree = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "haddock"; version = "2.16.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow, David Waern";
      maintainer = "Simon Hengel <sol@typeful.net>, Mateusz Kowalczyk <fuuzetsu@fuuzetsu.co.uk>";
      author = "Simon Marlow, David Waern";
      homepage = "http://www.haskell.org/haddock/";
      url = "";
      synopsis = "A documentation-generation tool for Haskell libraries";
      description = "Haddock is a documentation-generation tool for Haskell\nlibraries";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haddock" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            ] ++ (if flags.in-ghc-tree
            then [
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."deepseq" or (buildDepError "deepseq"))
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."xhtml" or (buildDepError "xhtml"))
              (hsPkgs."Cabal" or (buildDepError "Cabal"))
              (hsPkgs."ghc" or (buildDepError "ghc"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."transformers" or (buildDepError "transformers"))
              ]
            else [ (hsPkgs."haddock-api" or (buildDepError "haddock-api")) ]);
          buildable = true;
          };
        };
      tests = {
        "html-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            ];
          buildable = true;
          };
        "latex-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            ];
          buildable = true;
          };
        };
      };
    }