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
      specVersion = "1.8";
      identifier = { name = "feed"; version = "1.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Bergmark <adam@bergmark.nl>";
      author = "Sigbjorn Finne <sof@forkIO.com>";
      homepage = "https://github.com/bergmark/feed";
      url = "";
      synopsis = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.";
      description = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.\n\nTo help working with the multiple feed formats we've\nended up with, this set of modules provides parsers,\npretty printers and some utility code for querying\nand just generally working with a concrete representation\nof feeds in Haskell.\n\nSee here for an example of how to create an Atom feed:\n<https://github.com/bergmark/feed/blob/master/tests/Example/CreateAtom.hs>\n\nFor basic reading and editing of feeds, consult\nthe documentation of the Text.Feed.* hierarchy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-compat" or (buildDepError "base-compat"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."time-locale-compat" or (buildDepError "time-locale-compat"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."xml-types" or (buildDepError "xml-types"))
          (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."xml-types" or (buildDepError "xml-types"))
            (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
            ];
          buildable = true;
          };
        "readme" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."xml-types" or (buildDepError "xml-types"))
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
            (hsPkgs."xml-types" or (buildDepError "xml-types"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit or (buildToolDepError "markdown-unlit")))
            ];
          buildable = true;
          };
        };
      };
    }