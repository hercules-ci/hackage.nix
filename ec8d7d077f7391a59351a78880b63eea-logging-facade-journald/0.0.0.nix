{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "logging-facade-journald";
          version = "0.0.0";
        };
        license = "MIT";
        copyright = "(c) 2014 Zalora South East Asia Pte Ltd";
        maintainer = "Sönke Hahn <SoenkeHahn@gmail.com>";
        author = "Sönke Hahn <SoenkeHahn@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Journald back-end for logging-facade";
        description = "Journald back-end for logging-facade";
        buildType = "Simple";
      };
      components = {
        logging-facade-journald = {
          depends  = [
            hsPkgs.base
            hsPkgs.libsystemd-journal
            hsPkgs.logging-facade
            hsPkgs.unordered-containers
            hsPkgs.text
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.logging-facade
              hsPkgs.libsystemd-journal
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.hspec
            ];
          };
        };
      };
    }