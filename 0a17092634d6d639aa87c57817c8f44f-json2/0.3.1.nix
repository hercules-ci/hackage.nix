{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "json2";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Yuriy Iskra";
        maintainer = "YuriyIskra  <iskra.yw@gmail.com>";
        author = "YuriyIskra  <iskra.yw@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "This library provides support for JSON.";
        description = "This library provides support for JSON.";
        buildType = "Simple";
      };
      components = {
        json2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.old-locale
            hsPkgs.time
          ];
        };
      };
    }