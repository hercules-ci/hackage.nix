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
      identifier = { name = "repl-toolkit"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "janos.tapolczai@gmail.com";
      author = "Janos Tapolczai";
      homepage = "https://github.com/ombocomp/repl-toolkit";
      url = "";
      synopsis = "Toolkit for quickly whipping up command-line interfaces.";
      description = "A simple toolkit for quickly whipping up REPLs, input validation and sets of commands included.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."functor-monadic" or (buildDepError "functor-monadic"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."ListLike" or (buildDepError "ListLike"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."numericpeano" or (buildDepError "numericpeano"))
          (hsPkgs."listsafe" or (buildDepError "listsafe"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          ];
        buildable = true;
        };
      };
    }