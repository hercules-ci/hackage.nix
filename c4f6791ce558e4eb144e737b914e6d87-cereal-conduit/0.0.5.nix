{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cereal-conduit";
          version = "0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Myles C. Maxfield <myles.maxfield@gmail.com>";
        author = "Myles C. Maxfield <myles.maxfield@gmail.com>";
        homepage = "https://github.com/litherum/cereal-conduit";
        url = "";
        synopsis = "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits";
        description = "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits";
        buildType = "Simple";
      };
      components = {
        cereal-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.cereal
            hsPkgs.mtl
            hsPkgs.bytestring
          ];
        };
        tests = {
          test-cereal-conduit = {
            depends  = [
              hsPkgs.base
              hsPkgs.conduit
              hsPkgs.cereal
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
        };
      };
    }