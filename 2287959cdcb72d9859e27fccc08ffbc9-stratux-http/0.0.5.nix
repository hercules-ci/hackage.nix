{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stratux-http";
          version = "0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2016 Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/stratux-http";
        url = "";
        synopsis = "A library for using HTTP with stratux";
        description = "A library for using HTTP with stratux <http://stratux.me/>";
        buildType = "Custom";
      };
      components = {
        stratux-http = {
          depends  = [
            hsPkgs.base
            hsPkgs.stratux-types
            hsPkgs.HTTP
            hsPkgs.network-uri
            hsPkgs.aeson
            hsPkgs.either
          ];
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