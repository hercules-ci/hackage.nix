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
    flags = { doctest = true; httpbin = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "wreq"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Bryan O'Sullivan";
      maintainer = "bos@serpentine.com";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://www.serpentine.com/wreq";
      url = "";
      synopsis = "An easy-to-use HTTP client library.";
      description = "\nA web client library that is designed for ease of use.\n\nTutorial: <http://www.serpentine.com/wreq/tutorial.html>\n\nFeatures include:\n\n* Simple but powerful `lens`-based API\n\n* A solid test suite, and built on reliable libraries like\nhttp-client and lens\n\n* Session handling includes connection keep-alive and pooling, and\ncookie persistence\n\n* Automatic response body decompression\n\n* Powerful multipart form and file upload handling\n\n* Support for JSON requests and responses, including navigation of\nschema-less responses\n\n* Basic and OAuth2 bearer authentication\n\n* Early TLS support via the tls package";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mime-types" or (buildDepError "mime-types"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "httpbin" = {
          depends = (pkgs.lib).optionals (!(!flags.httpbin)) [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if !flags.httpbin then false else true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wreq" or (buildDepError "wreq"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = (pkgs.lib).optionals (!(!flags.doctest)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if !flags.doctest then false else true;
          };
        };
      };
    }