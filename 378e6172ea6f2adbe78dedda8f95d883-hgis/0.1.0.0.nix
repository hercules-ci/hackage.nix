{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hgis";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Vanessa McHale";
        maintainer = "tmchale@wisc.edu";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/hgis#readme";
        url = "";
        synopsis = "Package and command-line for GIS with Haskell";
        description = "Package containting functions to make graphs, read\nshapefiles, and compute areas/perimeters of\ngeographic features.";
        buildType = "Simple";
      };
      components = {
        hgis = {
          depends  = [
            hsPkgs.base
            hsPkgs.readshp
            hsPkgs.optparse-applicative
            hsPkgs.Chart
            hsPkgs.Chart-cairo
            hsPkgs.Chart-diagrams
            hsPkgs.lens
            hsPkgs.composition
            hsPkgs.ansi-wl-pprint
            hsPkgs.transformers
            hsPkgs.directory
            hsPkgs.colour
            hsPkgs.data-default
          ];
        };
        exes = {
          hgis = {
            depends  = [
              hsPkgs.base
              hsPkgs.hgis
            ];
          };
        };
        tests = {
          hgis-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hgis
              hsPkgs.hspec
            ];
          };
        };
      };
    }