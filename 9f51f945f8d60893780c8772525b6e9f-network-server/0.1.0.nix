{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "network-server";
          version = "0.1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) 2009 Rick Kaudewitz";
        maintainer = "Rick Kaudewitz <rick.kaudewitz@yahoo.de>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "A light abstraction over sockets & co. for servers";
        description = "With these routines it is very easy to write a server, have it accept\nconnections on multiple ports via IP4, IP6 or unix sockets and associate\neach of these bindings with a server routine.";
        buildType = "Simple";
      };
      components = {
        network-server = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
          ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
            ];
          };
        };
      };
    }