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
      identifier = { name = "streamly-bytestring"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Sibi Prabakaran";
      maintainer = "sibi@psibi.in";
      author = "Sibi Prabakaran";
      homepage = "https://github.com/psibi/streamly-bytestring#readme";
      url = "";
      synopsis = "Library for streamly and bytestring interoperation.";
      description = "Please see the README on GitHub at <https://github.com/psibi/streamly-bytestring#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."streamly" or (buildDepError "streamly"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.1") (hsPkgs."base-compat" or (buildDepError "base-compat"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."transformers" or (buildDepError "transformers"));
        buildable = true;
        };
      tests = {
        "sb-test" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (buildDepError "hspec-discover"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."streamly-bytestring" or (buildDepError "streamly-bytestring"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.1") (hsPkgs."base-compat" or (buildDepError "base-compat"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."transformers" or (buildDepError "transformers"));
          buildable = true;
          };
        };
      benchmarks = {
        "sb-benchmark" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."streamly-bytestring" or (buildDepError "streamly-bytestring"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.1") (hsPkgs."base-compat" or (buildDepError "base-compat"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."transformers" or (buildDepError "transformers"));
          buildable = true;
          };
        };
      };
    }