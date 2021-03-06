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
      identifier = { name = "mathblog"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
      author = "Jonathan Daugherty <cygnus@foobox.com>";
      homepage = "http://jtdaugherty.github.io/mathblog/";
      url = "";
      synopsis = "A program for creating and managing a static\nweblog with LaTeX math and diagrams";
      description = "This package provides a program for creating and\nmanaging a statically-generated, VCS-friendly,\nmathematically-inclined weblog.  If you're\ninterested in managing a blog with few moving\nparts and support for embedded LaTeX math,\nembedded function plotting, and the UNIX editor\nof your choice, then this is the blogging\nplatform for you!  For detailed information and a\nfull feature list, please see the manual PDF in the\n'doc' directory.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mb" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."SHA" or (buildDepError "SHA"))
            (hsPkgs."HStringTemplate" or (buildDepError "HStringTemplate"))
            (hsPkgs."ConfigFile" or (buildDepError "ConfigFile"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."http-server" or (buildDepError "http-server"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."url" or (buildDepError "url"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            ];
          buildable = true;
          };
        "mb-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."SHA" or (buildDepError "SHA"))
            (hsPkgs."HStringTemplate" or (buildDepError "HStringTemplate"))
            (hsPkgs."ConfigFile" or (buildDepError "ConfigFile"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."http-server" or (buildDepError "http-server"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."url" or (buildDepError "url"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            ];
          buildable = true;
          };
        };
      };
    }