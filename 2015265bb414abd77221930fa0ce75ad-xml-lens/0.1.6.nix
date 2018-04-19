{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xml-lens";
          version = "0.1.6";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/xml-lens";
        url = "";
        synopsis = "Lenses, traversals, prisms for xml-conduit";
        description = "Lens-based DOM selector";
        buildType = "Simple";
      };
      components = {
        xml-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.xml-conduit
          ];
        };
      };
    }