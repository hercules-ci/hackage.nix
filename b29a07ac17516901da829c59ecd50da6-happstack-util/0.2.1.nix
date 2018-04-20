{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "happstack-util";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Happstack team <happs@googlegroups.com>";
        author = "Happstack team, HAppS LLC";
        homepage = "http://happstack.com";
        url = "";
        synopsis = "Web framework";
        description = "Miscellaneous utilities for Happstack packages.";
        buildType = "Simple";
      };
      components = {
        happstack-util = {
          depends  = [
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.extensible-exceptions
            hsPkgs.hslogger
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.time
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.template-haskell
          ] ++ [ hsPkgs.base ];
        };
        exes = {
          happstack-util-tests = {
            depends  = [
              hsPkgs.HUnit
            ] ++ pkgs.lib.optional _flags.tests hsPkgs.network;
          };
        };
      };
    }