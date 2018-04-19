{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "systemd";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "romain.gerard@erebe.eu";
        author = "Erèbe";
        homepage = "https://github.com/erebe/systemd";
        url = "";
        synopsis = "Systemd facilities (Socket activation, Notify)";
        description = "A module for Systemd facilities.";
        buildType = "Simple";
      };
      components = {
        systemd = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.transformers
            hsPkgs.network
            hsPkgs.bytestring
          ];
        };
        tests = {
          daemon-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
              hsPkgs.unix
              hsPkgs.systemd
            ];
          };
        };
      };
    }