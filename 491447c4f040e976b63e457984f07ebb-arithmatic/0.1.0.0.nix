{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "arithmatic";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "hawk.alan@gmail.com";
        author = "Alan Hawkins";
        homepage = "";
        url = "";
        synopsis = "Basic arithmatic in haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        arithmatic = {
          depends  = [ hsPkgs.base ];
        };
      };
    }