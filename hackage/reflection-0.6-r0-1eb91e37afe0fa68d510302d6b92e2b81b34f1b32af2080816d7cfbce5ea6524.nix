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
      identifier = { name = "reflection"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "2009 Edward A. Kmett, 2004 Oleg Kiselyov and Chung-chieh Shan";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett, Oleg Kiselyov and Chung-chieh Shan";
      homepage = "http://www.cs.rutgers.edu/~ccshan/prepose/prepose.pdf";
      url = "";
      synopsis = "Functional Pearl: Implicit Configurations";
      description = "This package provides an implementation of the ideas presented in the paper\n\"Functional Pearl: Implicit Configurations\" by Oleg Kiselyov and\nChung-chieh Shan. However, the API has been modified to use only\none extension: @Rank2Types@\n\nUsage reduces to using two combinators.\n\n> reify :: a -> (forall s. Reified s => Proxy (s a) -> w) -> w\n> reflect :: Reified s => p (s a) -> a\n\n> ghci> reify 6 (\\p -> reflect p + reflect p)\n> 12\n\nThe argument passed along by reify is just a @data Proxy t = Proxy@, so all of the\ninformation needed to reconstruct your value has been moved to the type level.\nThis enables it to be used when constructing instances (See @examples/Monoid.hs@).\nAn additional combinator, that may be more useful when building instances is also\nsupplied.\n\n> reflectT :: Reified s => p s a -> a\n\n/Changes in 0.6/:\n\n* Removed the dependency on multiparameter type classes, functional\ndependencies, and flexible instances, by making @Reifies@ a single\nparameter type class in the same fashion as @ReifiesStorable@.\n\n* Moved the building blocks to @Data.Reflection.Internal@ to reduce API clutter.\n\n* Added @reflectT@\n\n/Changes in 0.5/:\n\n* Generalized the type signatures in reflect to allow you to pass any type\nwith kind @* -> *@ wrapped around the desired type as the phantom type\nargument rather than just a @Proxy@.\n\n/Changes in 0.4/:\n\n* Converted from `Data.Tagged` to using `Data.Proxy` for reflection. This\nreduces the need for helper functions and scoped type variables in user\ncode.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          ];
        buildable = true;
        };
      };
    }