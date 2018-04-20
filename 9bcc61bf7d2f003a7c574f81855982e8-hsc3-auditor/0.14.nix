{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3-auditor";
          version = "0.14";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2010-2013";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/?t=hsc3-auditor";
        url = "";
        synopsis = "Haskell SuperCollider Auditor";
        description = "A simple-minded auditioner for music structures.";
        buildType = "Simple";
      };
      components = {
        hsc3-auditor = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.hmt
            hsPkgs.hosc
            hsPkgs.hsc3
          ];
        };
      };
    }