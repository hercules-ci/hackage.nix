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
    flags = { ci = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "postgrest"; version = "7.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Steve Chavez <stevechavezast@gmail.com>";
      author = "Joe Nelson, Adam Baker, Steve Chavez";
      homepage = "https://postgrest.org";
      url = "";
      synopsis = "REST API for any Postgres database";
      description = "Reads the schema of a PostgreSQL database and creates RESTful routes\nfor the tables and views, supporting all HTTP verbs that security\npermits.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."Ranged-sets" or (buildDepError "Ranged-sets"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."configurator-pg" or (buildDepError "configurator-pg"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."contravariant-extras" or (buildDepError "contravariant-extras"))
          (hsPkgs."cookie" or (buildDepError "cookie"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."gitrev" or (buildDepError "gitrev"))
          (hsPkgs."hasql" or (buildDepError "hasql"))
          (hsPkgs."hasql-pool" or (buildDepError "hasql-pool"))
          (hsPkgs."hasql-transaction" or (buildDepError "hasql-transaction"))
          (hsPkgs."heredoc" or (buildDepError "heredoc"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."insert-ordered-containers" or (buildDepError "insert-ordered-containers"))
          (hsPkgs."interpolatedstring-perl6" or (buildDepError "interpolatedstring-perl6"))
          (hsPkgs."jose" or (buildDepError "jose"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."swagger2" or (buildDepError "swagger2"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-cors" or (buildDepError "wai-cors"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
          ];
        buildable = true;
        };
      exes = {
        "postgrest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."auto-update" or (buildDepError "auto-update"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."hasql-pool" or (buildDepError "hasql-pool"))
            (hsPkgs."hasql-transaction" or (buildDepError "hasql-transaction"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."postgrest" or (buildDepError "postgrest"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."retry" or (buildDepError "retry"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-qq" or (buildDepError "aeson-qq"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."auto-update" or (buildDepError "auto-update"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."hasql-pool" or (buildDepError "hasql-pool"))
            (hsPkgs."hasql-transaction" or (buildDepError "hasql-transaction"))
            (hsPkgs."heredoc" or (buildDepError "heredoc"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."hspec-wai-json" or (buildDepError "hspec-wai-json"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."postgrest" or (buildDepError "postgrest"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            ];
          buildable = true;
          };
        "spec-querycost" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-qq" or (buildDepError "aeson-qq"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."auto-update" or (buildDepError "auto-update"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."hasql-pool" or (buildDepError "hasql-pool"))
            (hsPkgs."hasql-transaction" or (buildDepError "hasql-transaction"))
            (hsPkgs."heredoc" or (buildDepError "heredoc"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."hspec-wai-json" or (buildDepError "hspec-wai-json"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."postgrest" or (buildDepError "postgrest"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            ];
          buildable = true;
          };
        };
      };
    }