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
    flags = { pedantic = false; deepseq = false; };
    package = {
      specVersion = "1.9.1";
      identifier = { name = "apache-md5"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, 2010, 2012 - 2014 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško <peter.trsko@gmail.com>";
      homepage = "https://github.com/trskop/apache-md5";
      url = "";
      synopsis = "Apache specific MD5 digest algorighm.";
      description = "Haskell implementation of Apache HTTP server specific MD5 digest algorithm\nthat uses OpenSSL @MD5()@ function.\n\nREADME and ChangeLog can be found in source code package and on GitHub:\n\n* <https://github.com/trskop/apache-md5/blob/master/README.md>\n\n* <https://github.com/trskop/apache-md5/blob/master/ChangeLog.md>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or (buildDepError "deepseq"));
        libs = [ (pkgs."crypto" or (sysDepError "crypto")) ];
        buildable = true;
        };
      tests = {
        "apache-md5-unit-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          libs = [ (pkgs."crypto" or (sysDepError "crypto")) ];
          buildable = true;
          };
        };
      benchmarks = {
        "apache-md5-benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          libs = [ (pkgs."crypto" or (sysDepError "crypto")) ];
          buildable = true;
          };
        };
      };
    }