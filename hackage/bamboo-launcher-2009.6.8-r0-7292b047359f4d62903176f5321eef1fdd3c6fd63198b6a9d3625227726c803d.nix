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
      specVersion = "1.2";
      identifier = { name = "bamboo-launcher"; version = "2009.6.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/bamboo-launcher/tree/master";
      url = "";
      synopsis = "bamboo-launcher";
      description = "A standalone bamboo launcher to simplify deployment.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bamboo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hack" or (buildDepError "hack"))
            (hsPkgs."hack-contrib" or (buildDepError "hack-contrib"))
            (hsPkgs."bamboo" or (buildDepError "bamboo"))
            (hsPkgs."hack-handler-happstack" or (buildDepError "hack-handler-happstack"))
            (hsPkgs."mps" or (buildDepError "mps"))
            (hsPkgs."utf8-prelude" or (buildDepError "utf8-prelude"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."bamboo-theme-blueprint" or (buildDepError "bamboo-theme-blueprint"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ];
          buildable = true;
          };
        };
      };
    }