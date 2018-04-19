{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "btree-concurrent";
          version = "0.1.3";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "brinchj@gmail.com";
        author = "Morten Brøns, Johan Brinch";
        homepage = "https://github.com/brinchj/btree-concurrent";
        url = "";
        synopsis = "A backend agnostic, concurrent BTree";
        description = "A backend agnostic, concurrent BTree";
        buildType = "Custom";
      };
      components = {
        btree-concurrent = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.random
            hsPkgs.time
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.snappy
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
            hsPkgs.cereal
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
        tests = {
          quickcheck-highlevel = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.QuickCheck
              hsPkgs.mtl
              hsPkgs.stm
              hsPkgs.random
              hsPkgs.time
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.snappy
              hsPkgs.bytestring
              hsPkgs.base64-bytestring
              hsPkgs.cereal
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }