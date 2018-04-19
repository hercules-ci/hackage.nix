{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lists";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Chris Done, 2004-2011 John Goerzen";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Functions for dealing with lists";
        description = "Functions for dealing with lists";
        buildType = "Simple";
      };
      components = {
        lists = {
          depends  = [
            hsPkgs.base
            hsPkgs.bools
            hsPkgs.split
            hsPkgs.list-extras
          ];
        };
      };
    }