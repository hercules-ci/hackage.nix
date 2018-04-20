{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tuntap-simple";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "GPL3";
        maintainer = "tuntap-simple@riaqn.org";
        author = "Zesen Qian";
        homepage = "https://github.com/riaqn/tuntap-simple#readme";
        url = "";
        synopsis = "A simple tun/tap library";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        tuntap-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.ioctl
          ];
        };
      };
    }