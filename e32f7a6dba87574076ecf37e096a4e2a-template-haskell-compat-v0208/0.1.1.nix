{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "template-haskell-compat-v0208";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "(c) 2016, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/template-haskell-compat-v0208";
        url = "";
        synopsis = "A backwards compatibility layer for Template Haskell newer than 2.8";
        description = "";
        buildType = "Simple";
      };
      components = {
        template-haskell-compat-v0208 = {
          depends  = [
            hsPkgs.template-haskell
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
      };
    }