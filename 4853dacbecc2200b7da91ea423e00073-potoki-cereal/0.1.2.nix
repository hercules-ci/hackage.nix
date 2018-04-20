{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "potoki-cereal";
          version = "0.1.2";
        };
        license = "MIT";
        copyright = "(c) 2017, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/potoki-cereal";
        url = "";
        synopsis = "Streaming serialization";
        description = "";
        buildType = "Simple";
      };
      components = {
        potoki-cereal = {
          depends  = [
            hsPkgs.potoki-core
            hsPkgs.base
            hsPkgs.base-prelude
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.potoki
            hsPkgs.text
          ];
        };
      };
    }