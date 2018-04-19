{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-swagger";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "David Johnson (c) 2015-2016";
        maintainer = "djohnson.m@gmail.com";
        author = "David Johnson";
        homepage = "";
        url = "";
        synopsis = "Swagger";
        description = "This is an experimental release, this API is subject to change at any moment.";
        buildType = "Simple";
      };
      components = {
        servant-swagger = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.uuid
            hsPkgs.servant
            hsPkgs.unordered-containers
          ];
        };
      };
    }