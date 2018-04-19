{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "composite-opaleye";
          version = "0.5.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Confer Health, Inc.";
        maintainer = "oss@confer.health";
        author = "Confer Health, Inc.";
        homepage = "https://github.com/ConferHealth/composite#readme";
        url = "";
        synopsis = "Opaleye SQL for Frames records";
        description = "Integration between Frames records and Opaleye SQL, allowing records to be stored, retrieved, and queried from PostgreSQL.";
        buildType = "Simple";
      };
      components = {
        composite-opaleye = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.composite-base
            hsPkgs.lens
            hsPkgs.opaleye
            hsPkgs.postgresql-simple
            hsPkgs.product-profunctors
            hsPkgs.profunctors
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.vinyl
          ];
        };
        tests = {
          composite-opaleye-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.composite-base
              hsPkgs.lens
              hsPkgs.opaleye
              hsPkgs.postgresql-simple
              hsPkgs.product-profunctors
              hsPkgs.profunctors
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.vinyl
              hsPkgs.QuickCheck
              hsPkgs.composite-opaleye
              hsPkgs.hspec
            ];
          };
        };
      };
    }