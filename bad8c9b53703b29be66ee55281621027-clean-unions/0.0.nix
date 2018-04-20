{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clean-unions";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/clean-unions";
        url = "";
        synopsis = "Open unions without need for Typeable";
        description = "";
        buildType = "Simple";
      };
      components = {
        clean-unions = {
          depends  = [ hsPkgs.base ];
        };
      };
    }