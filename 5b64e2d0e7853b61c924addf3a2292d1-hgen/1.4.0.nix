{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      static = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hgen";
          version = "1.4.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "areces@loria.fr";
        author = "Carlos Areces and Juan Heguiabehere";
        homepage = "http://www.glyc.dc.uba.ar/intohylo/hgen.php";
        url = "";
        synopsis = "Random generation of modal and hybrid logic formulas";
        description = "Random generation of modal and hybrid logic formulas";
        buildType = "Simple";
      };
      components = {
        exes = {
          hgen = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.random
              hsPkgs.random
              hsPkgs.mtl
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.directory
              hsPkgs.hylolib
            ];
          };
        };
      };
    }