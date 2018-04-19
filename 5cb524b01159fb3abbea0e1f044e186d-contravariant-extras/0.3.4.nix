{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "contravariant-extras";
          version = "0.3.4";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/contravariant-extras";
        url = "";
        synopsis = "Extras for the \"contravariant\" package";
        description = "";
        buildType = "Simple";
      };
      components = {
        contravariant-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.tuple-th
            hsPkgs.template-haskell
            hsPkgs.contravariant
            hsPkgs.base-prelude
            hsPkgs.semigroups
          ];
        };
      };
    }