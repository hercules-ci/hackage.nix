{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi-spolsky";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "pastorelli.mario@gmail.com";
        author = "Mario Pastorelli";
        homepage = "https://github.com/melrief/yi-spolsky";
        url = "";
        synopsis = "Spolsky colour theme for the Yi text editor";
        description = "Spolsky colour theme for Yi. Check source for yi.hs usage.";
        buildType = "Simple";
      };
      components = {
        yi-spolsky = {
          depends  = [
            hsPkgs.base
            hsPkgs.yi
          ];
        };
      };
    }