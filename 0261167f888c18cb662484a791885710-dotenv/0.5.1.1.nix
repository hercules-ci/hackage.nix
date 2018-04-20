{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dotenv";
          version = "0.5.1.1";
        };
        license = "MIT";
        copyright = "2015-2017 Stack Builders Inc.";
        maintainer = "hackage@stackbuilders.com";
        author = "Justin Leitgeb";
        homepage = "https://github.com/stackbuilders/dotenv-hs";
        url = "";
        synopsis = "Loads environment variables from dotenv files";
        description = "\nIn most applications,\n<http://12factor.net/config configuration should be separated from code>.\nWhile it usually works well to keep configuration in the\nenvironment, there are cases where you may want to store\nconfiguration in a file outside of version control.\n\n\"Dotenv\" files have become popular for storing configuration,\nespecially in development and test environments. In\n<https://github.com/bkeepers/dotenv Ruby>,\n<https://github.com/theskumar/python-dotenv Python> and\n<https://www.npmjs.com/package/dotenv Javascript> there are libraries\nto facilitate loading of configuration options from configuration\nfiles. This library loads configuration to environment variables for\nprograms written in Haskell.\n\nTo use, call `loadFile` from your application:\n\n> import Configuration.Dotenv\n> loadFile False \"/my/dotenvfile\"\n\nThis package also includes an executable that can be used\nto inspect the results of applying one or more Dotenv files\nto the environment, or for invoking your executables with\nan environment after one or more Dotenv files is applied.\n\nSee the <https://github.com/stackbuilders/dotenv-hs Github>\npage for more information on this package.";
        buildType = "Simple";
      };
      components = {
        dotenv = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.megaparsec
            hsPkgs.process
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.exceptions
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.void;
        };
        exes = {
          dotenv = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.dotenv
              hsPkgs.optparse-applicative
              hsPkgs.megaparsec
              hsPkgs.process
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          dotenv-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.dotenv
              hsPkgs.megaparsec
              hsPkgs.hspec
              hsPkgs.process
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.exceptions
              hsPkgs.hspec-megaparsec
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.void;
          };
        };
      };
    }