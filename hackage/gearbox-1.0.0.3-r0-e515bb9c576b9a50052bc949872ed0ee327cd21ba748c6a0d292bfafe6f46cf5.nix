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
      specVersion = "1.6";
      identifier = { name = "gearbox"; version = "1.0.0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "http://code.mathr.co.uk/gearbox";
      url = "";
      synopsis = "zooming rotating fractal gears graphics demo";
      description = "OpenGL gearbox iterated function system.  Usage:\n@gearbox quality@ where quality is an integer between\n6 and 14 (default 9).  @f@ toggles full screen, any\nother key to quit.  Shaders generate a gear shape\nand hue rotate succesive copies via texture feedback.\n\nBlog post:\n\n* <http://mathr.co.uk/blog/2012-01-12_gearbox.html>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gearbox" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."Vec" or (buildDepError "Vec"))
            ];
          buildable = true;
          };
        };
      };
    }