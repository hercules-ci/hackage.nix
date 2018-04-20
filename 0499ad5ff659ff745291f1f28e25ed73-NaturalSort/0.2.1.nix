{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base3 = false;
      driver = false;
      no-lib = false;
      test = false;
      coverage = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "NaturalSort";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Joachim Fasting 2008-2010";
        maintainer = "Joachim Fasting <joachim.fasting@gmail.com>";
        author = "";
        homepage = "http://github.com/joachifm/natsort";
        url = "";
        synopsis = "Natural sorting for strings";
        description = "A library for sorting strings \"naturally\", i.e. taking numerical\nvalues into account when comparing textual inputs.\n\nE.g., \"1\" < \"10\", and \"10 bottles of beer\" < \"100 bottles of beer\".";
        buildType = "Simple";
      };
      components = {
        NaturalSort = {
          depends  = [
            hsPkgs.bytestring
            hsPkgs.strict
          ] ++ [ hsPkgs.base ];
        };
        exes = {
          nsort = {
            depends  = [
              hsPkgs.bytestring
              hsPkgs.strict
            ] ++ [ hsPkgs.base ];
          };
          test = {
            depends  = [
              hsPkgs.bytestring
              hsPkgs.QuickCheck
              hsPkgs.strict
            ] ++ [ hsPkgs.base ];
          };
        };
      };
    }