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
      identifier = { name = "reanimate-svg"; version = "0.9.8.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Himmelstrup <lemmih@gmail.com>";
      author = "Vincent Berthoux, David Himmelstrup";
      homepage = "";
      url = "";
      synopsis = "SVG file loader and serializer";
      description = "reanimate-svg provides types representing a SVG document,\nand allows to load and save it.\n\nThe types definition are aimed at rendering,\nso they are rather comple. For simpler SVG document building,\nlook after `lucid-svg`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."double-conversion" or (buildDepError "double-conversion"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs."fail" or (buildDepError "fail"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."svg-tree" or (buildDepError "svg-tree"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }