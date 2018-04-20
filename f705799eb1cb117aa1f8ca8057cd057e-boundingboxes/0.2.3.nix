{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "boundingboxes";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014 Fumiaki Kinoshita";
        maintainer = "fumiexcel@gmail.com";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/boundingboxes";
        url = "";
        synopsis = "A generic boundingbox for an arbitrary vector";
        description = "";
        buildType = "Simple";
      };
      components = {
        boundingboxes = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
          ];
        };
      };
    }