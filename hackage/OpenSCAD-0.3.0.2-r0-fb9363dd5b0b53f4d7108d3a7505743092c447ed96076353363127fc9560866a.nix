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
      identifier = { name = "OpenSCAD"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mwm@mired.org";
      author = "Mike Meyer";
      homepage = "https://chiselapp.com/user/mwm/repository/OpenSCAD/";
      url = "";
      synopsis = "ADT wrapper and renderer for OpenSCAD models.";
      description = "An algebraic data type for describing OpenSCAD models,\nfunctions to make building such models easier, and\nfunctions for rendering an ADT into an OpenSCAD program.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "Units" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."testpack" or (buildDepError "testpack"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }