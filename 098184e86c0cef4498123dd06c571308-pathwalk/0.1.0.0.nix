{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pathwalk";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "xena@yolo-swag.com";
        author = "Christine Dodrill";
        homepage = "";
        url = "";
        synopsis = "Path walking utilities for Haskell programs";
        description = "Simple directory tree walking utilities.";
        buildType = "Simple";
      };
      components = {
        pathwalk = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
      };
    }