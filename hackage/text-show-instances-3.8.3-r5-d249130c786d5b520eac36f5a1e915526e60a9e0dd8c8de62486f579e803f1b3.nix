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
    flags = {
      base-4-9 = true;
      template-haskell-2-11 = true;
      new-functor-classes = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "text-show-instances"; version = "3.8.3"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2014-2017 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/text-show-instances";
      url = "";
      synopsis = "Additional instances for text-show";
      description = "@text-show-instances@ is a supplemental library to @text-show@\nthat provides additional @Show@ instances for data types in\ncommon Haskell libraries and GHC dependencies that are not\nencompassed by @text-show@. Currently, @text-show-instances@\ncovers these libraries:\n\n* @<http://hackage.haskell.org/package/bifunctors           bifunctors>@\n\n* @<http://hackage.haskell.org/package/binary               binary>@\n\n* @<http://hackage.haskell.org/package/containers           containers>@\n\n* @<http://hackage.haskell.org/package/directory            directory>@\n\n* @<http://hackage.haskell.org/package/ghc-boot-th          ghc-boot-th>@\n\n* @<http://hackage.haskell.org/package/haskeline            haskeline>@\n\n* @<http://hackage.haskell.org/package/hpc                  hpc>@\n\n* @<http://hackage.haskell.org/package/old-locale           old-locale>@\n\n* @<http://hackage.haskell.org/package/old-time             old-time>@\n\n* @<http://hackage.haskell.org/package/pretty               pretty>@\n\n* @<http://hackage.haskell.org/package/random               random>@\n\n* @<http://hackage.haskell.org/package/tagged               tagged>@\n\n* @<http://hackage.haskell.org/package/template-haskell     template-haskell>@\n\n* @<http://hackage.haskell.org/package/terminfo             terminfo>@\n\n* @<https://hackage.haskell.org/package/text-short          text-short>@\n\n* @<http://hackage.haskell.org/package/time                 time>@\n\n* @<http://hackage.haskell.org/package/transformers         transformers>@\n\n* @<http://hackage.haskell.org/package/unix                 unix>@\n\n* @<http://hackage.haskell.org/package/unordered-containers unordered-containers>@\n\n* @<http://hackage.haskell.org/package/vector               vector>@\n\n* @<http://hackage.haskell.org/package/Win32                Win32>@\n\n* @<http://hackage.haskell.org/package/xhtml                xhtml>@\n\nOne can use these instances by importing\n\"TextShow.Instances\". Alternatively, there are monomorphic\nversions of the @showb@ function available in the other submodules\nof \"TextShow\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base-compat-batteries" or (buildDepError "base-compat-batteries"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."hpc" or (buildDepError "hpc"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-short" or (buildDepError "text-short"))
          (hsPkgs."text-show" or (buildDepError "text-show"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          ] ++ [
          (hsPkgs."base" or (buildDepError "base"))
          ]) ++ (if flags.template-haskell-2-11
          then [
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."ghc-boot-th" or (buildDepError "ghc-boot-th"))
            ]
          else [
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ])) ++ (if flags.new-functor-classes
          then [
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            ]
          else [
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ])) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
          else [
            (hsPkgs."terminfo" or (buildDepError "terminfo"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ]);
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = ((([
            (hsPkgs."base-compat-batteries" or (buildDepError "base-compat-batteries"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."hpc" or (buildDepError "hpc"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."text-short" or (buildDepError "text-short"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."text-show-instances" or (buildDepError "text-show-instances"))
            (hsPkgs."th-orphans" or (buildDepError "th-orphans"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            ] ++ [
            (hsPkgs."base" or (buildDepError "base"))
            ]) ++ (if flags.template-haskell-2-11
            then [
              (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
              (hsPkgs."ghc-boot-th" or (buildDepError "ghc-boot-th"))
              ]
            else [
              (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
              ])) ++ (if flags.new-functor-classes
            then [
              (hsPkgs."transformers" or (buildDepError "transformers"))
              (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
              ]
            else [
              (hsPkgs."transformers" or (buildDepError "transformers"))
              ])) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
            else [
              (hsPkgs."terminfo" or (buildDepError "terminfo"))
              (hsPkgs."unix" or (buildDepError "unix"))
              ]);
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }