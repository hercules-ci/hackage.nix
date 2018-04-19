{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gyah-bin";
          version = "0.2.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "qinka@live.com";
        author = "Qinka";
        homepage = "";
        url = "";
        synopsis = "A binary version of GiveYouAHead";
        description = "GiveYouAHead  binary";
        buildType = "Simple";
      };
      components = {
        exes = {
          gyah = {
            depends  = [
              hsPkgs.base
              hsPkgs.GiveYouAHead
              hsPkgs.extra
            ];
          };
        };
      };
    }