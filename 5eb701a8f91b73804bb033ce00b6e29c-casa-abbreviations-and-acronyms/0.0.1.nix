{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "casa-abbreviations-and-acronyms";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (C) 2016 Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/casa-abbreviations-and-acronyms";
        url = "";
        synopsis = "CASA Abbreviations and Acronyms";
        description = "CASA Abbreviations and Acronyms\n\n<https://www.casa.gov.au/standard-page/aviation-abbreviations-and-acronyms>";
        buildType = "Custom";
      };
      components = {
        casa-abbreviations-and-acronyms = {
          depends  = [ hsPkgs.base ];
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