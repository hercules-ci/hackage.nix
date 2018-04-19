{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      programs = false;
    } // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "multiarg";
          version = "0.30.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2011-2014 Omari Norman";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "https://github.com/massysett/multiarg";
        url = "";
        synopsis = "Command lines for options that take multiple arguments";
        description = "multiarg helps you build command-line parsers for\nprograms with options that take more than one argument.\nSee the documentation in the Multiarg module for details.";
        buildType = "Simple";
      };
      components = {
        multiarg = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          grover = {
            depends  = optionals _flags.programs [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.quickpull
              hsPkgs.barecheck
            ];
          };
          telly = {
            depends  = optionals _flags.programs [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.quickpull
              hsPkgs.barecheck
            ];
          };
        };
        tests = {
          multiarg-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.quickpull
              hsPkgs.barecheck
            ];
          };
        };
      };
    }