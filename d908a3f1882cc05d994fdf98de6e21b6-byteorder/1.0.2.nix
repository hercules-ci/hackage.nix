{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "byteorder";
          version = "1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Antoine Latter <aslatter@gmail.com>";
        author = "Antoine Latter";
        homepage = "http://community.haskell.org/~aslatter/code/byteorder";
        url = "";
        synopsis = "Exposes the native endianess or byte ordering of the system.";
        description = "This package is for working with the native byte-ordering of\nthe system.";
        buildType = "Simple";
      };
      components = {
        byteorder = {
          depends  = [ hsPkgs.base ];
        };
      };
    }