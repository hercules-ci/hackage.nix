{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "machines-io";
          version = "0.2.0.12";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "alois.cochard@gmail.com";
        author = "Alois Cochard";
        homepage = "http://github.com/aloiscochard/machines-io";
        url = "";
        synopsis = "IO utilities for the machines library";
        description = "";
        buildType = "Simple";
      };
      components = {
        machines-io = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.chunked-data
            hsPkgs.machines
            hsPkgs.transformers
          ];
        };
      };
    }