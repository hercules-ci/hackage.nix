{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "metronome";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Paolo Veonelli, 2012";
        maintainer = "paolo.veronelli@gmail.com";
        author = "Paolo Veronelli";
        homepage = "";
        url = "";
        synopsis = "Time Synchronized execution.";
        description = "Metronome and tracks, useful to execute IO actions at regular intervals. State exposed via STM.";
        buildType = "Simple";
      };
      components = {
        metronome = {
          depends  = [
            hsPkgs.base
            hsPkgs.hosc
            hsPkgs.stm
            hsPkgs.data-lens
            hsPkgs.data-lens-template
          ];
        };
      };
    }