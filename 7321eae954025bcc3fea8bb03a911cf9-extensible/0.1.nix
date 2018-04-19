{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "extensible";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/extensible";
        url = "";
        synopsis = "Poly-kinded, extensible ADTs";
        description = "Extensible Products/Unions";
        buildType = "Simple";
      };
      components = {
        extensible = {
          depends  = [ hsPkgs.base ];
        };
      };
    }