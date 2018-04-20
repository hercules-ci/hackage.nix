{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xournal-parser";
          version = "0.3.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "http://ianwookim.org/hxournal";
        url = "";
        synopsis = "Xournal file parser";
        description = "Text parser for xournal xml file";
        buildType = "Simple";
      };
      components = {
        xournal-parser = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.attoparsec
            hsPkgs.attoparsec-iteratee
            hsPkgs.iteratee
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.xml-enumerator
            hsPkgs.enumerator
            hsPkgs.strict
            hsPkgs.iteratee-compress
            hsPkgs.xournal-types
          ];
        };
      };
    }