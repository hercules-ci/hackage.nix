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
      identifier = { name = "hinotify-bytestring"; version = "0.3.8.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Lennart Kolmodin";
      homepage = "https://github.com/hasufell/hinotify-bytestring.git";
      url = "";
      synopsis = "Haskell binding to inotify, using ByteString filepaths";
      description = "This library provides a wrapper to the Linux Kernel's inotify feature,\nallowing applications to subscribe to notifications when a file is\naccessed or modified. Filepaths are represented as ByteStrings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."unix" or (buildDepError "unix"))
          ];
        buildable = true;
        };
      tests = {
        "test001" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hinotify-bytestring" or (buildDepError "hinotify-bytestring"))
            (hsPkgs."posix-paths" or (buildDepError "posix-paths"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        "test002" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hinotify-bytestring" or (buildDepError "hinotify-bytestring"))
            (hsPkgs."posix-paths" or (buildDepError "posix-paths"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        "test003" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hinotify-bytestring" or (buildDepError "hinotify-bytestring"))
            (hsPkgs."posix-paths" or (buildDepError "posix-paths"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        "test004" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hinotify-bytestring" or (buildDepError "hinotify-bytestring"))
            (hsPkgs."posix-paths" or (buildDepError "posix-paths"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        "test005" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hinotify-bytestring" or (buildDepError "hinotify-bytestring"))
            (hsPkgs."posix-paths" or (buildDepError "posix-paths"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }