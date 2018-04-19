{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stackage-update";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/fpco/stackage-update";
        url = "";
        synopsis = "Update your package index incrementally (requires git)";
        description = "";
        buildType = "Simple";
      };
      components = {
        stackage-update = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
          ];
        };
        exes = {
          stackage-update = {
            depends  = [
              hsPkgs.base
              hsPkgs.stackage-update
            ];
          };
        };
      };
    }