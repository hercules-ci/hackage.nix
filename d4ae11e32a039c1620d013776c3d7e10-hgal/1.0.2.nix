{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hgal";
          version = "1.0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jeanphilippe.bernardy (google mail)";
        author = "Jean-Philippe Bernardy";
        homepage = "";
        url = "";
        synopsis = "library for computation automorphism group and canonical labelling of a graph";
        description = "";
        buildType = "Simple";
      };
      components = {
        hgal = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.array
          ];
        };
      };
    }