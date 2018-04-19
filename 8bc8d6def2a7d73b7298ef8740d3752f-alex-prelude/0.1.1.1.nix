{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "alex-prelude";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "alex.sayers@protonmail.com";
        author = "Alex Sayers";
        homepage = "https://www.asayers.com/";
        url = "";
        synopsis = "Collection of useful functions for writing console applications";
        description = "Collection of useful functions for writing console applications";
        buildType = "Simple";
      };
      components = {
        alex-prelude = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
      };
    }