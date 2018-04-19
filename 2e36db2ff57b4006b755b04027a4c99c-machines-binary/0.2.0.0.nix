{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "machines-binary";
          version = "0.2.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "alois.cochard@gmail.com";
        author = "Alois Cochard";
        homepage = "http://github.com/aloiscochard/machines-binary";
        url = "";
        synopsis = "Binary utilities for the machines library";
        description = "";
        buildType = "Simple";
      };
      components = {
        machines-binary = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.machines
          ];
        };
      };
    }