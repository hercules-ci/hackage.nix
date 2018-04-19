{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "json-encoder";
          version = "0.1.5";
        };
        license = "MIT";
        copyright = "(c) 2015, Sannsyn AS";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/sannsyn/json-encoder";
        url = "";
        synopsis = "A direct-to-bytes single-pass JSON encoder with a declarative DSL";
        description = "";
        buildType = "Simple";
      };
      components = {
        json-encoder = {
          depends  = [
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.bytestring-tree-builder
            hsPkgs.scientific
            hsPkgs.contravariant-extras
            hsPkgs.contravariant
            hsPkgs.semigroups
            hsPkgs.base-prelude
          ];
        };
      };
    }