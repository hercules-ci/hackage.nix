{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "foscam-sort";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Tony Morris";
        maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
        homepage = "https://github.com/tonymorris/foscam-sort";
        url = "";
        synopsis = "Foscam File format";
        description = "Sort Foscam Files into directories";
        buildType = "Custom";
      };
      components = {
        foscam-sort = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.digit
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.unix
            hsPkgs.foscam-filename
            hsPkgs.foscam-directory
          ];
        };
        exes = {
          foscam-sort = {
            depends  = [
              hsPkgs.base
              hsPkgs.lens
              hsPkgs.digit
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.unix
              hsPkgs.foscam-filename
              hsPkgs.foscam-directory
            ];
          };
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.QuickCheck
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }