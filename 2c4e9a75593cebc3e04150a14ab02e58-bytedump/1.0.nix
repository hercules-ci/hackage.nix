{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      executable = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bytedump";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-bytedump";
        url = "";
        synopsis = "Flexible byte dump helpers for human readers.";
        description = "A set of helpers to dump bytes with lots of different output formats\neasy to read for humans eyes.";
        buildType = "Simple";
      };
      components = {
        bytedump = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        exes = {
          Hexdump = {
            depends  = optionals _flags.executable [
              hsPkgs.base
              hsPkgs.bytestring
            ];
          };
        };
      };
    }