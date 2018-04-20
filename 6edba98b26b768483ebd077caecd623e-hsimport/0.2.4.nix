{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsimport";
          version = "0.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "daniel.trstenjak@gmail.com";
        author = "Daniel Trstenjak";
        homepage = "";
        url = "";
        synopsis = "A command line program for extending the import list of a Haskell source file.";
        description = "A command line program for extending the import list of a Haskell source file.";
        buildType = "Simple";
      };
      components = {
        hsimport = {
          depends  = [
            hsPkgs.base
            hsPkgs.cmdargs
            hsPkgs.haskell-src-exts
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.split
            hsPkgs.attoparsec
            hsPkgs.directory
          ];
        };
        exes = {
          hsimport = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.haskell-src-exts
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.split
              hsPkgs.attoparsec
              hsPkgs.directory
            ];
          };
          hsimport-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.filepath
              hsPkgs.process
            ];
          };
        };
      };
    }