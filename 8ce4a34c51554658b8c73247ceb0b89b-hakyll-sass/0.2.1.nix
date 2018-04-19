{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hakyll-sass";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "vc@braden-walters.info";
        author = "Braden Walters";
        homepage = "https://github.com/meoblast001/hakyll-sass";
        url = "";
        synopsis = "Hakyll SASS compiler over hsass";
        description = "Hakyll compiler which indirectly uses libsass to compile SASS and SCSS to CSS.\nThe Ruby SASS compiler is not required. For documentation, see the\n<https://github.com/meoblast001/hakyll-sass/blob/master/README.md README>.";
        buildType = "Simple";
      };
      components = {
        hakyll-sass = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson-pretty
            hsPkgs.hakyll
            hsPkgs.data-default-class
            hsPkgs.hsass
            hsPkgs.filepath
          ];
        };
      };
    }