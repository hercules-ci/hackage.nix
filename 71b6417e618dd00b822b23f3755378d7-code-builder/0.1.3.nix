{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "code-builder";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "code@silk.co";
        author = "Silk";
        homepage = "";
        url = "";
        synopsis = "Simple system for generating code.";
        description = "Simple system for generating code.";
        buildType = "Simple";
      };
      components = {
        code-builder = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }