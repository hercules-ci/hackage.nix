{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-doctests = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lens-aeson";
          version = "1.0.0.5";
        };
        license = "MIT";
        copyright = "Copyright (C) 2012 Paul Wilson\nCopyright (C) 2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/lens/lens-aeson/";
        url = "";
        synopsis = "Law-abiding lenses for aeson";
        description = "Law-abiding lenses for aeson";
        buildType = "Custom";
      };
      components = {
        lens-aeson = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.unordered-containers
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.scientific
          ];
        };
        tests = {
          doctests = {
            depends  = optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.generic-deriving
              hsPkgs.semigroups
              hsPkgs.simple-reflect
            ];
          };
        };
      };
    }