{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "wai-lite";
          version = "0.2.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "amit@amitlevy.com";
        author = "Amit Levy";
        homepage = "";
        url = "";
        synopsis = "DEPCRECATED (use package \"simple\" instead) A minimalist web framework for WAI web applications";
        description = "A minimalist web framework for WAI web applications";
        buildType = "Simple";
      };
      components = {
        wai-lite = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.bytestring
          ];
        };
      };
    }