{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-pony-serve-wai";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nfjinjing@gmail.com";
        author = "Jinjing Wang";
        homepage = "https://github.com/nfjinjing/http-pony-serve-wai";
        url = "";
        synopsis = "Serve a WAI application with http-pony";
        description = "";
        buildType = "Simple";
      };
      components = {
        http-pony-serve-wai = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.http-types
            hsPkgs.pipes
            hsPkgs.pipes-bytestring
            hsPkgs.wai
          ];
        };
      };
    }