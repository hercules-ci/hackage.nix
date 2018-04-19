{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sized";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "konn.jinro_at_gmail.com";
        author = "Hiromi ISHII";
        homepage = "";
        url = "";
        synopsis = "Sized sequence data-types";
        description = "A wrapper to make length-parametrized data-type from ListLike data-types.";
        buildType = "Simple";
      };
      components = {
        sized = {
          depends  = [
            hsPkgs.base
            hsPkgs.type-natural
            hsPkgs.ListLike
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.constraints
            hsPkgs.monomorphic
          ];
        };
      };
    }