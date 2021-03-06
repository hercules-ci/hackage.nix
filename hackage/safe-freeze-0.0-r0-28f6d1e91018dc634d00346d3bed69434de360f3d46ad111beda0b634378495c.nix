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
      specVersion = "1.6";
      identifier = { name = "safe-freeze"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reiner Pope <reiner.pope@gmail.com>";
      author = "Reiner Pope <reiner.pope@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Support for safely freezing multiple arrays in the ST monad.";
      description = "Support for safely freezing multiple arrays in the ST\nmonad. Developed in\n<http://reinerp.wordpress.com/2009/09/18/making-runstarray-more-flexible/>.\n\nThe new monad is defined in Control.Monad.ST.Freeze. An example\nof its use is given in Data.Array.Vector.STFreeze. The modules\nData.Array.Vector.STFreeze and Data.STRef.Freeze are reexports of\nData.Array.Vector and Data.STRef but lifted to the new ST monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."category-extras" or (buildDepError "category-extras"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."uvector" or (buildDepError "uvector"))
          ];
        buildable = true;
        };
      };
    }