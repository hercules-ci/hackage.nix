{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hscuid";
          version = "1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dan.buckmaster@gmail.com";
        author = "Daniel Buckmaster";
        homepage = "https://github.com/eightyeight/hscuid";
        url = "";
        synopsis = "Collision-resistant IDs";
        description = "CUIDs are designed for horizontal scalability and collision\nresistance. Read more about them at <https://usecuid.org>.";
        buildType = "Simple";
      };
      components = {
        hscuid = {
          depends  = [
            hsPkgs.base
            hsPkgs.formatting
            hsPkgs.time
            hsPkgs.random
            hsPkgs.transformers
            hsPkgs.hostname
            hsPkgs.text
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
          libs = pkgs.lib.optional system.isWindows pkgs.kernel32;
        };
        tests = {
          hscuid-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hscuid
            ];
          };
        };
      };
    }