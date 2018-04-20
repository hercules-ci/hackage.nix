{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "octane";
          version = "0.4.21";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Taylor Fausak";
        author = "";
        homepage = "https://github.com/tfausak/octane#readme";
        url = "";
        synopsis = "Parse Rocket League replays.";
        description = "Octane parses Rocket League replays.";
        buildType = "Simple";
      };
      components = {
        octane = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.autoexporter
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.binary-bits
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-binary-ieee754
            hsPkgs.deepseq
            hsPkgs.newtype-generics
            hsPkgs.text
          ];
        };
        exes = {
          octane = {
            depends  = [
              hsPkgs.base
              hsPkgs.octane
            ];
          };
        };
        tests = {
          octane-test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.octane
              hsPkgs.tasty
              hsPkgs.tasty-hspec
            ];
          };
        };
        benchmarks = {
          octane-benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.octane
            ];
          };
        };
      };
    }