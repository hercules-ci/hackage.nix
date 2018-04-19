{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "list-t-html-parser";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/list-t-html-parser";
        url = "";
        synopsis = "Streaming HTML parser";
        description = "";
        buildType = "Simple";
      };
      components = {
        list-t-html-parser = {
          depends  = [
            hsPkgs.list-t
            hsPkgs.html-tokenizer
            hsPkgs.text
            hsPkgs.either
            hsPkgs.mtl-prelude
            hsPkgs.base-prelude
          ];
        };
      };
    }