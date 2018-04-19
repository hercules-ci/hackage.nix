{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      hlint = true;
      build-examples = false;
      llvm = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-cacophony";
          version = "0.4.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "jgalt@centromere.net";
        author = "John Galt";
        homepage = "https://github.com/centromere/pipes-cacophony";
        url = "";
        synopsis = "Pipes for Noise-secured network connections.";
        description = "A set of pipes to secure network connections with the\n<https://github.com/trevp/noise/blob/master/noise.md Noise> protocol.";
        buildType = "Simple";
      };
      components = {
        pipes-cacophony = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cacophony
            hsPkgs.pipes
          ];
        };
        exes = {
          loopback = {
            depends  = optionals _flags.build-examples [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cacophony
              hsPkgs.lens
              hsPkgs.pipes
              hsPkgs.pipes-cacophony
            ];
          };
        };
        tests = {
          hlint = {
            depends  = optionals (!(!_flags.hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }