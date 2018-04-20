{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "imagesize-conduit";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Bergmark <adam@bergmark.nl>, Felipe Lessa <felipe.lessa@gmail.com>";
        author = "Michael Snoyman";
        homepage = "http://github.com/silkapp/imagesize-conduit";
        url = "";
        synopsis = "Determine the size of some common image formats.";
        description = "Currently supports PNG, GIF, and JPEG. This package provides a Sink that will consume the minimum number of bytes necessary to determine the image dimensions.";
        buildType = "Simple";
      };
      components = {
        imagesize-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.exceptions
            hsPkgs.bytestring
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.resourcet
              hsPkgs.imagesize-conduit
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.bytestring
            ];
          };
        };
      };
    }