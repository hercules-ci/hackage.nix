{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "biofasta";
          version = "0.0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "dfornika@gmail.com";
        author = "Ketil Malde <ketil@malde.org>";
        homepage = "https://patch-tag.com/r/dfornika/biofasta/home";
        url = "";
        synopsis = "Library for reading fasta sequence files";
        description = "Library for reading fasta sequence files";
        buildType = "Simple";
      };
      components = {
        biofasta = {
          depends  = [
            hsPkgs.base
            hsPkgs.biocore
            hsPkgs.bytestring
          ];
        };
      };
    }