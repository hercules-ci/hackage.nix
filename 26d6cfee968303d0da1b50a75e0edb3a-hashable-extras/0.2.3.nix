{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-doctests = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hashable-extras";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/analytics/hashable-extras/";
        url = "";
        synopsis = "Higher-rank Hashable";
        description = "This package provides higher rank analogues to the Hashable data type.\n\nThe need for these sometimes arises in the presence of polymorphic recursion.";
        buildType = "Custom";
      };
      components = {
        hashable-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ];
        };
        tests = {
          doctests = {
            depends  = optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }