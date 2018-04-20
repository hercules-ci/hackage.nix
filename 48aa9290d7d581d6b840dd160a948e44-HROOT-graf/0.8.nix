{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HROOT-graf";
          version = "0.8";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "http://ianwookim.org/HROOT";
        url = "";
        synopsis = "Haskell binding to ROOT Graf modules";
        description = "HROOT is a haskell Foreign Function Interface (FFI) binding to ROOT. ROOT(http://root.cern.ch) is an object-oriented program and library developed by CERN for physics data analysis.";
        buildType = "Custom";
      };
      components = {
        HROOT-graf = {
          depends  = [
            hsPkgs.base
            hsPkgs.fficxx-runtime
            hsPkgs.HROOT-core
            hsPkgs.HROOT-hist
          ];
          libs = [ pkgs."stdc++" ];
        };
      };
    }