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
      specVersion = "1.2.0";
      identifier = { name = "aivika"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2013. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://github.com/dsorokin/aivika";
      url = "";
      synopsis = "A multi-paradigm simulation library";
      description = "Aivika is a multi-paradigm simulation library which has\nthe following features:\n\n* allows defining recursive stochastic differential equations of\nSystem Dynamics (unordered as in maths via the recursive do-notation);\n\n* has a basic support of the event-driven paradigm of\nthe Discrete Event Simulation (DES);\n\n* has a basic support of the process-oriented paradigm of DES\nwith an ability to resume, suspend and cancel\nthe discontinuous processes;\n\n* allows working with limited resources;\n\n* supports the activity-oriented paradigm of DES;\n\n* supports the basic constructs for the agent-based modeling;\n\n* allows creating combined discrete-continuous models;\n\n* the arrays of simulation variables are inherently supported\n(this is mostly a feature of Haskell itself);\n\n* supports the Monte-Carlo simulation;\n\n* the simulation model can depend on external parameters;\n\n* uses extensively the signals to notify the model about changing\nthe reference and variable values;\n\n* allows gathering statistics in time points;\n\n* hides the technical details in high-level simulation monads\n(two of them support the recursive do-notation).\n\nAivika itself is a light-weight engine with minimal dependencies.\nHowever, it has additional packages Aivika Experiment [1] and\nAivika Experiment Chart [2] that offer the following features:\n\n* automating the simulation experiments;\n\n* saving the results in CSV files;\n\n* plotting the deviation chart by rule 3-sigma, histogram,\ntime series, XY chart;\n\n* collecting the summary of statistical data;\n\n* parallel execution of the Monte-Carlo simulation;\n\n* have an extensible architecture.\n\nAll three libraries were tested on Linux, Windows and OS X.\n\nPlease read the PDF document An Introduction to\nAivika Simulation Library [3] for more details.\nThis document is included in the distributive of Aivika but\nyou can usually find a more recent version by the link provided.\n\n\\[1] <http://hackage.haskell.org/package/aivika-experiment>\n\n\\[2] <http://hackage.haskell.org/package/aivika-experiment-chart>\n\n\\[3] <https://github.com/dsorokin/aivika/blob/master/doc/aivika.pdf>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }