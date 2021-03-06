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
      specVersion = "1.18";
      identifier = { name = "lambdacms-media"; version = "0.0.1"; };
      license = "MIT";
      copyright = "(c) 2014 Hoppinger";
      maintainer = "mats@AT-hoppinger.com";
      author = "Mats Rietdijk, Cies Breijs";
      homepage = "http://lambdacms.org/media";
      url = "";
      synopsis = "Media CMS extension for Yesod apps";
      description = "LambdaCms is a Content Management System (CMS) in Haskell\nusing Yesod. This package contains the \"media\" extension.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."yesod" or (buildDepError "yesod"))
          (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
          (hsPkgs."lambdacms-core" or (buildDepError "lambdacms-core"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
          ];
        buildable = true;
        };
      };
    }