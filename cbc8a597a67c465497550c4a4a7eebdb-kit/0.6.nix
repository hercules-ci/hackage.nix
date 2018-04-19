{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "kit";
          version = "0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nkpart@gmail.com";
        author = "Nick Partridge";
        homepage = "";
        url = "";
        synopsis = "A dependency manager for Xcode (Objective-C) projects";
        description = "A dependency manager for Xcode (Objective-C) projects";
        buildType = "Simple";
      };
      components = {
        exes = {
          kit = {
            depends  = [
              hsPkgs.process
              hsPkgs.network
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.cmdargs
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.HTTP
              hsPkgs.Glob
              hsPkgs.data-object
              hsPkgs.data-object-yaml
            ];
          };
        };
      };
    }