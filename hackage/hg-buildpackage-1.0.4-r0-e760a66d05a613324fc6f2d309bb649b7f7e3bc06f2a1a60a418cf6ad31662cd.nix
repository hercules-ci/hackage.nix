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
      specVersion = "0";
      identifier = { name = "hg-buildpackage"; version = "1.0.4"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2003 - 2007 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "";
      url = "";
      synopsis = "Tools to help manage Debian packages with Mercurial";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hg-importorig" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."HSH" or (buildDepError "HSH"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        "hg-importdsc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."HSH" or (buildDepError "HSH"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        "hg-buildpackage" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."HSH" or (buildDepError "HSH"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        "hg-markdeb" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."HSH" or (buildDepError "HSH"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        "hgmerge-debupstream" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."HSH" or (buildDepError "HSH"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }