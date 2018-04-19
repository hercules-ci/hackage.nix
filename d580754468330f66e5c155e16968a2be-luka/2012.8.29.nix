{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "luka";
          version = "2012.8.29";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang";
        author = "Jinjing Wang";
        homepage = "https://github.com/nfjinjing/luka";
        url = "";
        synopsis = "Simple ObjectiveC runtime binding";
        description = "Simple ObjectiveC runtime binding";
        buildType = "Simple";
      };
      components = {
        luka = {
          depends  = [
            hsPkgs.base
            hsPkgs.air
            hsPkgs.libffi
            hsPkgs.bytestring
          ];
          libs = [ pkgs.objc ];
        };
      };
    }