{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "herringbone";
          version = "0.0.7";
        };
        license = "MIT";
        copyright = "";
        maintainer = "harry@garrood.me";
        author = "Harry Garrood";
        homepage = "";
        url = "";
        synopsis = "A library for compiling and serving static web assets.";
        description = "A library for compiling and serving static web assets. For more information, please see <https://github.com/hdgarrood/herringbone>.";
        buildType = "Simple";
      };
      components = {
        herringbone = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.wai-app-static
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.process
            hsPkgs.process-listlike
            hsPkgs.directory
            hsPkgs.unix-compat
            hsPkgs.http-types
            hsPkgs.time
            hsPkgs.old-locale
          ];
        };
        exes = {
          herringbone-test-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.herringbone
              hsPkgs.text
              hsPkgs.warp
            ];
          };
        };
        tests = {
          herringbone-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.wai
              hsPkgs.wai-app-static
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.system-filepath
              hsPkgs.system-fileio
              hsPkgs.process
              hsPkgs.process-listlike
              hsPkgs.directory
              hsPkgs.unix-compat
              hsPkgs.http-types
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.warp
            ];
          };
        };
      };
    }