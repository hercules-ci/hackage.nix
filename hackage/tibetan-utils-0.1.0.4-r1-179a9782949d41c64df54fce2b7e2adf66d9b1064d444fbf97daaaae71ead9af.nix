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
      identifier = { name = "tibetan-utils"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Vanessa McHale";
      maintainer = "tmchale@wisc.edu";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/tibetan-utils#readme";
      url = "";
      synopsis = "Parse and display tibetan numerals";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."composition" or (buildDepError "composition"))
          (hsPkgs."text-show" or (buildDepError "text-show"))
          (hsPkgs."either" or (buildDepError "either"))
          ];
        buildable = true;
        };
      tests = {
        "tibetan-utils-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tibetan-utils" or (buildDepError "tibetan-utils"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-megaparsec" or (buildDepError "hspec-megaparsec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            ];
          buildable = true;
          };
        };
      };
    }