{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acid-state";
          version = "0.14.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Lemmih <lemmih@gmail.com>";
        author = "David Himmelstrup";
        homepage = "https://github.com/acid-state/acid-state";
        url = "";
        synopsis = "Add ACID guarantees to any serializable Haskell data structure.";
        description = "Use regular Haskell data structures as your database and get stronger ACID guarantees than most RDBMS offer.";
        buildType = "Simple";
      };
      components = {
        acid-state = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.extensible-exceptions
            hsPkgs.safecopy
            hsPkgs.stm
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.template-haskell
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
        };
        benchmarks = {
          loading-benchmark = {
            depends  = [
              hsPkgs.random
              hsPkgs.directory
              hsPkgs.system-fileio
              hsPkgs.system-filepath
              hsPkgs.criterion
              hsPkgs.mtl
              hsPkgs.base
              hsPkgs.acid-state
            ];
          };
        };
      };
    }