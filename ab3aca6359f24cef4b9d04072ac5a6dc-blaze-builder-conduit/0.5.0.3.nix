{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "blaze-builder-conduit";
          version = "0.5.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/conduit";
        url = "";
        synopsis = "Convert streams of builders to streams of bytestrings.";
        description = "Convert streams of builders to streams of bytestrings.";
        buildType = "Simple";
      };
      components = {
        blaze-builder-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.blaze-builder
            hsPkgs.conduit
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.conduit
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.blaze-builder
              hsPkgs.blaze-builder-conduit
              hsPkgs.transformers
            ];
          };
        };
      };
    }