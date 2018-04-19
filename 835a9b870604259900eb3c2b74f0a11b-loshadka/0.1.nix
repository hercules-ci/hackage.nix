{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "loshadka";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "somu@so.mu";
        author = "George Timoschenko";
        homepage = "https://github.com/tvorcesky/loshadka";
        url = "";
        synopsis = "Minecraft 1.7 server proxy that answers to queries when the server is offline";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          loshadka = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.network
              hsPkgs.split
              hsPkgs.aeson
              hsPkgs.process
              hsPkgs.cryptohash
              hsPkgs.hex
            ];
          };
        };
      };
    }