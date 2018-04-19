{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "stringsearch";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bos@serpentine.com";
        author = "Daniel Fischer, Chris Kuklewicz";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Fast search of ByteStrings";
        buildType = "Custom";
      };
      components = {
        stringsearch = {
          depends  = [ hsPkgs.base ];
        };
      };
    }