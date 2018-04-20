{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pipes-zlib";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "p.capriotti@gmail.com";
        author = "Paolo Capriotti";
        homepage = "https://github.com/pcapriotti/pipes-extra";
        url = "";
        synopsis = "Pipes to deal with zipped data.";
        description = "Pipes to deal with zipped data.";
        buildType = "Simple";
      };
      components = {
        pipes-zlib = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.pipes-core
            hsPkgs.bytestring
            hsPkgs.zlib-bindings
          ];
        };
      };
    }