{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Hach";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Dmitry Malikov <malikov.d.y@gmail.com>";
        author = "Matvey Aksenov,\nDmitry Malikov";
        homepage = "http://github.com/dmalikov/HaCh";
        url = "";
        synopsis = "Simple chat";
        description = "Simple example of chat application. Consists of 3 components: hach-server, hach-client (simple console client), hach-nclient (vty-ui client).";
        buildType = "Simple";
      };
      components = {
        Hach = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.old-locale
            hsPkgs.network
          ];
        };
        exes = {
          hach-client = {};
          hach-nclient = {
            depends  = [
              hsPkgs.vty
              hsPkgs.vty-ui
              hsPkgs.text
            ];
          };
          hach-server = {
            depends  = [ hsPkgs.time ];
          };
        };
      };
    }