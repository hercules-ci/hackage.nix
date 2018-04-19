{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hexml-lens";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "All Rights Reserved";
        maintainer = "pepeiborra@gmail.com";
        author = "Jose Iborra";
        homepage = "https://github.com/pepeiborra/hexml-lens#readme";
        url = "";
        synopsis = "Lenses for the hexml package";
        description = "Lenses for the hexml package";
        buildType = "Simple";
      };
      components = {
        hexml-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.foundation
            hsPkgs.hexml
            hsPkgs.lens
            hsPkgs.text
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.foundation
              hsPkgs.hexml
              hsPkgs.lens
              hsPkgs.text
              hsPkgs.doctest
              hsPkgs.hexml-lens
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }