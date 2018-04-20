{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      hlint = true;
      doctest = true;
      llvm = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cacophony";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "jgalt@centromere.net";
        author = "John Galt";
        homepage = "https://github.com/centromere/cacophony/wiki";
        url = "";
        synopsis = "A library implementing the Noise protocol.";
        description = "This library implements the <https://github.com/trevp/noise/blob/master/noise.md Noise>\nprotocol.";
        buildType = "Simple";
      };
      components = {
        cacophony = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cryptonite
            hsPkgs.lens
            hsPkgs.memory
            hsPkgs.mtl
          ];
        };
        tests = {
          test-cacophony = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cacophony
              hsPkgs.memory
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
          hlint = {
            depends  = pkgs.lib.optionals (!(!_flags.hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
          doctests = {
            depends  = pkgs.lib.optionals (!(!_flags.doctest)) [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.doctest
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }