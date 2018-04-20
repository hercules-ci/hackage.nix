{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "BCMtools";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "(c) 2015 Kai Zhang";
        maintainer = "kai@kzhang.org";
        author = "Kai Zhang";
        homepage = "";
        url = "";
        synopsis = "Big Contact Map Tools";
        description = "Tools for working with Big Contact Map generated by HiC experiments";
        buildType = "Simple";
      };
      components = {
        BCMtools = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.colour
            hsPkgs.data-default-class
            hsPkgs.unordered-containers
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.zlib
            hsPkgs.matrices
          ];
        };
        exes = {
          bcmtools = {
            depends  = [
              hsPkgs.base
              hsPkgs.BCMtools
              hsPkgs.cereal
              hsPkgs.optparse-applicative
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.resourcet
              hsPkgs.bytestring-lexing
              hsPkgs.bytestring
              hsPkgs.unordered-containers
              hsPkgs.split
              hsPkgs.data-default-class
            ];
          };
        };
      };
    }