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
    flags = { base4 = true; base3 = true; };
    package = {
      specVersion = "0";
      identifier = { name = "Cabal"; version = "1.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2003-2006, Isaac Jones\n2005-2008, Duncan Coutts";
      maintainer = "cabal-devel@haskell.org";
      author = "Isaac Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "A framework for packaging Haskell software";
      description = "The Haskell Common Architecture for Building Applications and\nLibraries: a framework defining a common interface for authors to more\neasily build their Haskell applications in a portable way.\n\nThe Haskell Cabal is part of a larger infrastructure for distributing,\norganizing, and cataloging Haskell libraries and tools.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ] ++ (pkgs.lib).optional (flags.base4) (hsPkgs."base" or (buildDepError "base"))) ++ (pkgs.lib).optional (flags.base3) (hsPkgs."base" or (buildDepError "base"))) ++ (pkgs.lib).optional (!flags.base3 && !flags.base4) (hsPkgs."base" or (buildDepError "base"))) ++ (pkgs.lib).optionals (flags.base3 || flags.base4) [
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }