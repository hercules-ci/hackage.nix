{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-raml-docs";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "junji.hashimoto@gmail.com";
        author = "junji.hashimoto";
        homepage = "";
        url = "";
        synopsis = "A html documentation generator library for RAML.";
        description = "A html documentation generator library for RAML.";
        buildType = "Simple";
      };
      components = {
        yesod-raml-docs = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-raml
            hsPkgs.yesod-markdown
            hsPkgs.shakespeare
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.yaml
            hsPkgs.bytestring
            hsPkgs.template-haskell
          ];
        };
      };
    }