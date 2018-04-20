{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Dust-tools";
          version = "1.3.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "brandon@ischool.utexas.edu";
        author = "Brandon Wiley";
        homepage = "";
        url = "";
        synopsis = "Network filtering exploration tools";
        description = "A set of tools for exploring network filtering";
        buildType = "Simple";
      };
      components = {
        Dust-tools = {
          depends  = [
            hsPkgs.base
            hsPkgs.Dust-crypto
            hsPkgs.Dust
            hsPkgs.bytestring
            hsPkgs.entropy
            hsPkgs.network
            hsPkgs.cereal
            hsPkgs.ghc-prim
            hsPkgs.binary
            hsPkgs.random
            hsPkgs.random-extras
            hsPkgs.random-source
            hsPkgs.random-fu
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.split
          ];
        };
        exes = {
          shaper-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.Dust
              hsPkgs.bytestring
              hsPkgs.entropy
              hsPkgs.network
              hsPkgs.cereal
              hsPkgs.ghc-prim
              hsPkgs.binary
              hsPkgs.random
              hsPkgs.random-extras
              hsPkgs.random-source
              hsPkgs.random-fu
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.split
            ];
          };
          shaper-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.Dust
              hsPkgs.bytestring
              hsPkgs.entropy
              hsPkgs.network
              hsPkgs.cereal
              hsPkgs.ghc-prim
              hsPkgs.binary
              hsPkgs.random
              hsPkgs.random-extras
              hsPkgs.random-source
              hsPkgs.random-fu
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.split
            ];
          };
          replay-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.Dust
              hsPkgs.bytestring
              hsPkgs.entropy
              hsPkgs.network
              hsPkgs.cereal
              hsPkgs.ghc-prim
              hsPkgs.binary
              hsPkgs.random
              hsPkgs.random-extras
              hsPkgs.random-source
              hsPkgs.random-fu
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.split
            ];
          };
          replay-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.Dust
              hsPkgs.bytestring
              hsPkgs.entropy
              hsPkgs.network
              hsPkgs.cereal
              hsPkgs.ghc-prim
              hsPkgs.binary
              hsPkgs.random
              hsPkgs.random-extras
              hsPkgs.random-source
              hsPkgs.random-fu
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.split
            ];
          };
          shaper-export = {
            depends  = [
              hsPkgs.base
              hsPkgs.Dust
              hsPkgs.bytestring
              hsPkgs.entropy
              hsPkgs.network
              hsPkgs.cereal
              hsPkgs.ghc-prim
              hsPkgs.binary
              hsPkgs.random
              hsPkgs.random-extras
              hsPkgs.random-source
              hsPkgs.random-fu
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.split
              hsPkgs.csv
            ];
          };
          shaper-show = {
            depends  = [
              hsPkgs.base
              hsPkgs.Dust
              hsPkgs.bytestring
              hsPkgs.entropy
              hsPkgs.network
              hsPkgs.cereal
              hsPkgs.ghc-prim
              hsPkgs.binary
              hsPkgs.random
              hsPkgs.random-extras
              hsPkgs.random-source
              hsPkgs.random-fu
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.split
              hsPkgs.csv
            ];
          };
        };
      };
    }