{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snaplet-hdbc";
          version = "0.7.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "j.stutterheim@me.com";
        author = "Jurriën Stutterheim";
        homepage = "http://norm2782.com/";
        url = "";
        synopsis = "HDBC snaplet for Snap Framework";
        description = "This snaplet consists of two parts: an HDBC abstraction snaplet\nand an HDBC authentication backend for Snap's authentication\nsnaplet.";
        buildType = "Simple";
      };
      components = {
        snaplet-hdbc = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.clientsession
            hsPkgs.containers
            hsPkgs.convertible
            hsPkgs.data-lens
            hsPkgs.data-lens-template
            hsPkgs.HDBC
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.mtl
            hsPkgs.resource-pool-catchio
            hsPkgs.snap
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
      };
    }