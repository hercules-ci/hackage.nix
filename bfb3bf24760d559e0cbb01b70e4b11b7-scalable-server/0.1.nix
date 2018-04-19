{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "scalable-server";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jamie@bu.mp";
        author = "Jamie Turner";
        homepage = "";
        url = "";
        synopsis = "Library for writing fast/scalable TCP-based services";
        description = "Library for writing fast/scalable TCP-based services";
        buildType = "Simple";
      };
      components = {
        scalable-server = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.enumerator
            hsPkgs.attoparsec-enumerator
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.blaze-builder
          ];
        };
      };
    }