{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-static-pages";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "greg@gregweber.info";
        author = "Greg Weber";
        homepage = "";
        url = "";
        synopsis = "generate static html pages from a WAI application";
        description = "";
        buildType = "Simple";
      };
      components = {
        wai-static-pages = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.wai-test
            hsPkgs.http-types
            hsPkgs.conduit
            hsPkgs.blaze-builder
            hsPkgs.bytestring
          ];
        };
      };
    }