{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      category = true;
      optimizeadvanced = true;
      buildprofilers = false;
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "synthesizer-core";
          version = "0.5.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
        url = "";
        synopsis = "Audio signal processing coded in Haskell: Low level part";
        description = "Low level audio signal processing\nused by the other synthesizer packages.\nThe routines can be really fast\ndue to StorableVector, Stream-like list type and aggressive inlining.\nFor an interface to Haskore see <http://code.haskell.org/haskore/revised/synthesizer/>.\nFor introductory examples see \"Synthesizer.Plain.Tutorial\"\nand \"Synthesizer.Generic.Tutorial\".\n\nFunctions:\nOscillators, Noise generators, Frequency filters,\nFast Fourier transform for computation of frequency spectrum";
        buildType = "Simple";
      };
      components = {
        synthesizer-core = {
          depends  = [
            hsPkgs.sample-frame-np
            hsPkgs.sox
            hsPkgs.transformers
            hsPkgs.event-list
            hsPkgs.non-negative
            hsPkgs.explicit-exception
            hsPkgs.numeric-prelude
            hsPkgs.numeric-quest
            hsPkgs.utility-ht
            hsPkgs.filepath
            hsPkgs.stream-fusion
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.deepseq
            hsPkgs.storablevector
            hsPkgs.storable-record
            hsPkgs.storable-tuple
            hsPkgs.QuickCheck
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.process
            ] ++ [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.special-functors
            ]);
        };
        exes = {
          test = {};
          fouriertest = {
            depends  = optionals _flags.buildprofilers [
              hsPkgs.storablevector
              hsPkgs.utility-ht
              hsPkgs.storable-tuple
              hsPkgs.timeit
              hsPkgs.base
            ];
          };
          speedtest = {};
          speedtest-exp = {
            depends  = optionals _flags.splitbase [
              hsPkgs.old-time
              hsPkgs.directory
            ];
          };
          speedtest-simple = {};
        };
      };
    }