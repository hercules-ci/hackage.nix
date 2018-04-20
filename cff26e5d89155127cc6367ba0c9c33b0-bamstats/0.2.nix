{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bamstats";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Ketil Malde <ketil@malde.org>";
        author = "Ketil Malde";
        homepage = "";
        url = "";
        synopsis = "A program to extract various information from BAM alignmnet files.";
        description = "";
        buildType = "Simple";
      };
      components = {
        bamstats = {};
        exes = {
          bam = {
            depends  = [
              hsPkgs.base
              hsPkgs.samtools
              hsPkgs.cmdargs
            ];
          };
        };
      };
    }