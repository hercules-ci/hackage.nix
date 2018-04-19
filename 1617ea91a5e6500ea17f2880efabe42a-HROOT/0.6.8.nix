{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HROOT";
          version = "0.6.8";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "http://ianwookim.org/HROOT";
        url = "";
        synopsis = "Wrapper for ROOT";
        description = "Haskell FFI binding for ROOT";
        buildType = "Custom";
      };
      components = {
        HROOT = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs."stdc++" ];
        };
      };
    }