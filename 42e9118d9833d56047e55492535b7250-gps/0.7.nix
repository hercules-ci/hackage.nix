{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gps";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas DuBuisson";
        author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "For manipulating GPS coordinates and trails.";
        description = "Useful for manipulating GPS coordinages (in various forms), building paths, and performing basic computations";
        buildType = "Simple";
      };
      components = {
        gps = {
          depends  = [
            hsPkgs.base
            hsPkgs.pretty
            hsPkgs.prettyclass
            hsPkgs.time
            hsPkgs.GPX
            hsPkgs.hxt
            hsPkgs.xsd
          ];
        };
      };
    }