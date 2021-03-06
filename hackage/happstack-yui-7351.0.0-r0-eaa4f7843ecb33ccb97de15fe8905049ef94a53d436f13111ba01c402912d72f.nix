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
      specVersion = "1.10";
      identifier = { name = "happstack-yui"; version = "7351.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dag.odenhall@gmail.com";
      author = "";
      homepage = "https://github.com/dag/happstack-yui";
      url = "";
      synopsis = "Utilities for using YUI3 with Happstack.";
      description = "Bundles YUI 3.5.1 and includes a \\\"combo handler\\\" for use in Happstack\nwhich concatenates YUI modules server-side to send in a single HTTP\nrequest.  The YUI bundle is embedded in the library with Template Haskell\nwhich means the files are served directly from memory, and also that you\ncan compile and deploy a single executable without having to worry about\ndeploying the YUI files as well.\n\nThe benefits of using this over the Yahoo! CDN is that you can work\noffline and that you can host YUI yourself without sacrificing the\nbenefits of \\\"combo loading\\\".\n\nThe versioning scheme of this package is that the first part is the\ntargeted Happstack series plus the bundled YUI version, such that 7351\nmeans \\\"Happstack 7, YUI 3.5.1\\\".  The second part is the major version\nof this package itself, as defined by the Package Versioning Policy.\n\nIn a future release, the plan is to add more utilities than just a\nbundled YUI, for example a combo handler for YUI modules written using\nJMacro, a bridge between HSX and YUI Node objects and tools for working\nwith the YUI CSS modules.\n\nFor an example application, see:\n<https://github.com/dag/happstack-yui/blob/master/demo/happstack-yui-demo.hs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."boomerang" or (buildDepError "boomerang"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."happstack-jmacro" or (buildDepError "happstack-jmacro"))
          (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
          (hsPkgs."jmacro" or (buildDepError "jmacro"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."web-routes" or (buildDepError "web-routes"))
          (hsPkgs."web-routes-boomerang" or (buildDepError "web-routes-boomerang"))
          (hsPkgs."web-routes-happstack" or (buildDepError "web-routes-happstack"))
          ];
        buildable = true;
        };
      };
    }