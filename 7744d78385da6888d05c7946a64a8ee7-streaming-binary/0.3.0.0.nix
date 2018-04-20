{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streaming-binary";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Mathieu Boespflug";
        maintainer = "m@tweag.io";
        author = "Mathieu Boespflug";
        homepage = "https://github.com/mboes/streaming-binary#readme";
        url = "";
        synopsis = "Streaming interface to binary.";
        description = "";
        buildType = "Simple";
      };
      components = {
        streaming-binary = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.streaming
            hsPkgs.streaming-bytestring
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.streaming
              hsPkgs.streaming-binary
              hsPkgs.streaming-bytestring
            ];
          };
        };
      };
    }