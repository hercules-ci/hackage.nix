{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lame";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mrkkrp/lame";
        url = "";
        synopsis = "Fairly complete high-level binding to LAME encoder";
        description = "Fairly complete high-level binding to LAME encoder.";
        buildType = "Simple";
      };
      components = {
        lame = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default-class
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.wave
          ];
          libs = [ pkgs.mp3lame ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-default-class
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.htaglib
              hsPkgs.lame
              hsPkgs.temporary
              hsPkgs.text
            ];
          };
        };
      };
    }