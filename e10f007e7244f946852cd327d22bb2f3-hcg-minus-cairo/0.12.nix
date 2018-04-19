{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hcg-minus-cairo";
          version = "0.12";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/?t=hcg-minus-cairo";
        url = "";
        synopsis = "haskell cg (minus) (cairo rendering)";
        description = "cg (minus) library (cairo rendering)";
        buildType = "Simple";
      };
      components = {
        hcg-minus-cairo = {
          depends  = [
            hsPkgs.base
            hsPkgs.cairo
            hsPkgs.colour
            hsPkgs.hcg-minus
            hsPkgs.filepath
            hsPkgs.SG
            hsPkgs.utf8-string
          ];
        };
      };
    }