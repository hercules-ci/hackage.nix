{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "snap-loader-static";
          version = "0.9.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "snap@snapframework.com";
        author = "Carl Howells";
        homepage = "http://snapframework.com/";
        url = "";
        synopsis = "Snap: A Haskell Web Framework: static loader";
        description = "Snap Framework static loader";
        buildType = "Simple";
      };
      components = {
        snap-loader-static = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }