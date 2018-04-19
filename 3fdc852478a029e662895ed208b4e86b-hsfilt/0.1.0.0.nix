{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsfilt";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "omeragacan@gmail.com";
        author = "Ömer Sinan Ağacan";
        homepage = "";
        url = "";
        synopsis = "Z-decoder.";
        description = "Inspired by c++filt from GNU binutils. Reads mangled(z-encoded) names from stdin,\nprints demangled(z-decoded) names to stdout.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hsfilt = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc
            ];
          };
        };
      };
    }