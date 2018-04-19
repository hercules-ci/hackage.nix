{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "storable-endian";
          version = "0.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "Eugene Kirpichov, 2010";
        maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>";
        author = "Eugene Kirpichov <ekirpichov@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Storable instances with endianness";
        description = "Storable instances with endianness";
        buildType = "Simple";
      };
      components = {
        storable-endian = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.byteorder
          ] ++ [ hsPkgs.base ];
        };
      };
    }