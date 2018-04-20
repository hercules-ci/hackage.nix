{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "kit";
          version = "0.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nkpart@gmail.com";
        author = "Nick Partridge";
        homepage = "http://github.com/nkpart/kit";
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
              hsPkgs.HTTP
              hsPkgs.Glob
              hsPkgs.data-object
              hsPkgs.data-object-yaml
              hsPkgs.unix
              hsPkgs.ansi-terminal
            ];
          };
        };
      };
    }