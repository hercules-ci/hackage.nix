{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9";
        identifier = {
          name = "haskelm";
          version = "0.1.12.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2014 Joey Eremondi";
        maintainer = "joey@eremondi.com";
        author = "Joey Eremondi";
        homepage = "http://github.com/JoeyEremondi/haskelm";
        url = "";
        synopsis = "Elm to Haskell translation";
        description = "Library and binary to translate Haskell code into Elm code";
        buildType = "Simple";
      };
      components = {
        haskelm = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
            hsPkgs.vector
            hsPkgs.th-desugar
            hsPkgs.temporary
            hsPkgs.split
            hsPkgs.binary
            hsPkgs.haskell-src-exts
          ];
        };
        exes = {
          haskelm = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.template-haskell
              hsPkgs.haskell-src-meta
              hsPkgs.vector
              hsPkgs.th-desugar
              hsPkgs.temporary
              hsPkgs.split
              hsPkgs.binary
              hsPkgs.haskell-src-exts
            ];
          };
        };
        tests = {
          test-haskelm = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.shakespeare
              hsPkgs.template-haskell
              hsPkgs.haskell-src-meta
              hsPkgs.vector
              hsPkgs.th-desugar
              hsPkgs.temporary
              hsPkgs.split
              hsPkgs.Elm
              hsPkgs.binary
              hsPkgs.haskell-src-exts
            ];
          };
        };
      };
    }