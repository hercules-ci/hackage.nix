{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "biofastq";
          version = "0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Ketil Malde <ketil@malde.org>";
        author = "Ketil Malde";
        homepage = "http://biohaskell.org/";
        url = "";
        synopsis = "A library for reading FASTQ files";
        description = "";
        buildType = "Simple";
      };
      components = {
        biofastq = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.biocore
          ];
        };
      };
    }