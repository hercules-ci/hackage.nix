{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "XmlHtmlWriter";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Matthew Mirman <mmirman@andrew.cmu.edu>";
        author = "Matthew Mirman";
        homepage = "http://github.com/mmirman/haskogeneous/tree/XmlHtmlWriter";
        url = "";
        synopsis = "A library for writing XML and HTML";
        description = "A way to write XML and HTML with more efficient syntax.";
        buildType = "Simple";
      };
      components = {
        XmlHtmlWriter = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
      };
    }