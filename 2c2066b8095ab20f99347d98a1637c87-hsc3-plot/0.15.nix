{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3-plot";
          version = "0.15";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape and others, 2013-2014";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/t/hsc3-plot";
        url = "";
        synopsis = "Haskell SuperCollider Plotting";
        description = "Plotting functions for hsc3";
        buildType = "Simple";
      };
      components = {
        hsc3-plot = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.hosc
            hsPkgs.hsc3
            hsPkgs.hsc3-lang
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.split
            hsPkgs.statistics
            hsPkgs.vector
          ];
        };
      };
    }