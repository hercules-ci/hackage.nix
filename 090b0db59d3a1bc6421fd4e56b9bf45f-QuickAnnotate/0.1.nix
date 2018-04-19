{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "QuickAnnotate";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sh.najd@gmail.com";
        author = "Shayan Najd";
        homepage = "darcs repository    http://code.haskell.org/QuickAnnotate/";
        url = "";
        synopsis = "Annotation Framework";
        description = "A framework introducing annotation by preprocessing";
        buildType = "Simple";
      };
      components = {
        QuickAnnotate = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          qapp = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-src-exts
            ];
          };
        };
      };
    }