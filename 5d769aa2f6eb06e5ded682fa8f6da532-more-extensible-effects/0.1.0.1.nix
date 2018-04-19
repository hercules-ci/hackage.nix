{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "more-extensible-effects";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 qzchenwl";
        maintainer = "qzchenwl@gmail.com";
        author = "qzchenwl";
        homepage = "https://github.com/qzchenwl/more-extensible-effects#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        more-extensible-effects = {
          depends  = [ hsPkgs.base ];
        };
      };
    }