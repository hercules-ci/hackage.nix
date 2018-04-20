{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "strelka";
          version = "1";
        };
        license = "MIT";
        copyright = "(c) 2016, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/strelka";
        url = "";
        synopsis = "A simple, flexible and composable web-router";
        description = "An HTTP server can be defined as a request parser, which produces a response,\nwhile managing some state.\nAs simple as that.\nThis library exploits that fact to produce a very simple and flexible API,\nwhich can then be used on top of any server implementation.\n\n[Server Bindings]\nCurrently only a binding to WAI and Warp is known:\n<http://hackage.haskell.org/package/strelka-wai>.\n\n[Demo]\nFor a thorough demonstration of the library and suggested usage patterns\ncheck out the following project:\n<https://github.com/nikita-volkov/strelka-demo>.";
        buildType = "Simple";
      };
      components = {
        strelka = {
          depends  = [
            hsPkgs.strelka-core
            hsPkgs.base64-bytestring
            hsPkgs.attoparsec
            hsPkgs.http-media
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.bifunctors
            hsPkgs.semigroups
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
      };
    }