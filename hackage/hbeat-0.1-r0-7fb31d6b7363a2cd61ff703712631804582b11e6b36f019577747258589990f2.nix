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
      identifier = { name = "hbeat"; version = "0.1"; };
      license = "BSD-4-Clause";
      copyright = "Tim Docker, 2007";
      maintainer = "";
      author = "Tim Docker";
      homepage = "";
      url = "";
      synopsis = "A simple step sequencer GUI.";
      description = "A toy step sequencer program written using OpenGL and the SDL libraries. Configuration (including the audio samples used) is controlled via an external file.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hbeat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."SDL-mixer" or (buildDepError "SDL-mixer"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          libs = [
            (pkgs."SDL" or (sysDepError "SDL"))
            (pkgs."SDL_mixer" or (sysDepError "SDL_mixer"))
            ];
          buildable = true;
          };
        };
      };
    }