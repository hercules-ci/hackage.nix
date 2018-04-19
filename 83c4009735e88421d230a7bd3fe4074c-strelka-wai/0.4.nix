{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "strelka-wai";
          version = "0.4";
        };
        license = "MIT";
        copyright = "(c) 2016, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/strelka-wai";
        url = "";
        synopsis = "WAI compatibility layer for \"strelka\"";
        description = "";
        buildType = "Simple";
      };
      components = {
        strelka-wai = {
          depends  = [
            hsPkgs.wai
            hsPkgs.warp
            hsPkgs.http-types
            hsPkgs.strelka
            hsPkgs.unordered-containers
            hsPkgs.case-insensitive
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
      };
    }