{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      interrupt = true;
      server = true;
      network-uri = true;
      custom-binary = true;
      c-runtime = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gf";
          version = "3.8";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Thomas Hallgren";
        author = "";
        homepage = "http://www.grammaticalframework.org/";
        url = "";
        synopsis = "Grammatical Framework";
        description = "GF, Grammatical Framework, is a programming language for multilingual grammar applications";
        buildType = "Custom";
      };
      components = {
        gf = {
          depends  = (([
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.random
            hsPkgs.pretty
            hsPkgs.mtl
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.time
            hsPkgs.time-compat
            hsPkgs.old-locale
            hsPkgs.process
            hsPkgs.haskeline
            hsPkgs.parallel
          ] ++ pkgs.lib.optionals (!_flags.custom-binary) [
            hsPkgs.binary
            hsPkgs.data-binary-ieee754
          ]) ++ pkgs.lib.optionals _flags.server ([
            hsPkgs.httpd-shed
            hsPkgs.network
            hsPkgs.json
            hsPkgs.cgi
          ] ++ (if _flags.network-uri
            then [
              hsPkgs.network-uri
              hsPkgs.network
            ]
            else [
              hsPkgs.network
            ]))) ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [
              hsPkgs.unix
              hsPkgs.terminfo
            ]);
          libs = pkgs.lib.optionals _flags.c-runtime [
            pkgs.gu
            pkgs.pgf
          ];
        };
        exes = {
          gf = {
            depends  = [
              hsPkgs.gf
              hsPkgs.base
            ];
          };
          pgf-shell = {
            depends  = [
              hsPkgs.gf
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.lifted-base
            ];
          };
        };
        tests = {
          rgl-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HTF
              hsPkgs.process
              hsPkgs.HUnit
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
          gf-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
            ];
          };
        };
      };
    }