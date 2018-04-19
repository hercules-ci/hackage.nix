{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hbro";
          version = "0.4.4";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "koral at mailoo dot org";
        author = "koral";
        homepage = "";
        url = "";
        synopsis = "A suckless minimal KISSy browser";
        description = "";
        buildType = "Simple";
      };
      components = {
        hbro = {
          depends  = [
            hsPkgs.base
            hsPkgs.webkit
            hsPkgs.gtk
            hsPkgs.glade
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.dyre
            hsPkgs.process
            hsPkgs.url
            hsPkgs.zeromq-haskell
            hsPkgs.bytestring
            hsPkgs.unix
          ];
        };
        exes = {
          hbro = {
            depends  = [
              hsPkgs.hbro
              hsPkgs.base
              hsPkgs.gtk
              hsPkgs.process
              hsPkgs.webkit
            ];
          };
        };
      };
    }