{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snap-blaze";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
        author = "Jasper Van der Jeugt <m@jaspervdj.be>";
        homepage = "http://github.com/jaspervdj/snap-blaze";
        url = "";
        synopsis = "blaze-html integration for Snap";
        description = "blaze-html integration for Snap";
        buildType = "Simple";
      };
      components = {
        snap-blaze = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.snap-core
          ];
        };
      };
    }