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
      specVersion = "1.12";
      identifier = { name = "cipher-aes128"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "Thomas M. DuBuisson";
      maintainer = "thomas.dubuisson@gmail.com";
      author = "Thomas M. DuBuisson, Vincent Hanquez (See AUTHORS file)";
      homepage = "https://github.com/TomMD/cipher-aes128";
      url = "";
      synopsis = "AES128 using AES-NI when available.";
      description = "AES128 with crypto-api instances and a trampoline between Vincent Hanquez's C-based and x86 NI-based AES.  Patches welcome to add additional high-performance backends (ARM?)";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell or (buildToolDepError "template-haskell")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (buildToolDepError "process")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (buildToolDepError "directory")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          ];
        buildable = true;
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            ];
          buildable = true;
          };
        };
      };
    }