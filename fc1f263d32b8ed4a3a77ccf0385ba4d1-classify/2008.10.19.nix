{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "classify";
          version = "2008.10.19";
        };
        license = "BSD-3-Clause";
        copyright = "2004-2008, Lemmih";
        maintainer = "Lemmih <lemmih@gmail.com>";
        author = "Lemmih <lemmih@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Library for classification of media files.";
        description = "";
        buildType = "Simple";
      };
      components = {
        classify = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.old-time
          ];
        };
      };
    }