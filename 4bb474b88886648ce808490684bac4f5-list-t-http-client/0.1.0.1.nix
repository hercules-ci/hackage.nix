{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "list-t-http-client";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/list-t-http-client";
        url = "";
        synopsis = "A streaming HTTP client";
        description = "";
        buildType = "Simple";
      };
      components = {
        list-t-http-client = {
          depends  = [
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.list-t
            hsPkgs.mtl-prelude
            hsPkgs.base-prelude
          ];
        };
      };
    }