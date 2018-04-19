{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "2.0";
        identifier = {
          name = "type-interpreter";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Ole Krüger 2018";
        maintainer = "ole@vprsm.de";
        author = "Ole Krüger";
        homepage = "";
        url = "";
        synopsis = "Interpreter for Template Haskell types";
        description = "";
        buildType = "Simple";
      };
      components = {
        type-interpreter = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.containers
          ];
        };
      };
    }