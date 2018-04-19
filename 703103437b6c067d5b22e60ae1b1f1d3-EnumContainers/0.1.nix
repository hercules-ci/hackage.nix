{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "EnumContainers";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "eyal.lotem@gmail.com";
        author = "Eyal Lotem";
        homepage = "";
        url = "";
        synopsis = "Simple Enum-class-based int containers";
        description = "";
        buildType = "Simple";
      };
      components = {
        EnumContainers = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
          ];
        };
      };
    }