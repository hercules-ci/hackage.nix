{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "folgerhs";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "2017 Unai Zalakain";
        maintainer = "unai@gisa-elkartea.org";
        author = "Unai Zalakain";
        homepage = "https://github.com/SU-LOSP/tools#readme";
        url = "";
        synopsis = "Toolset for Folger Shakespeare Library's XML annotated plays";
        description = "Toolset for Folger Shakespeare Library's XML annotated plays";
        buildType = "Simple";
      };
      components = {
        folgerhs = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml
          ];
        };
        exes = {
          folger-stage = {
            depends  = [
              hsPkgs.base
              hsPkgs.folgerhs
              hsPkgs.xml
            ];
          };
          folger-protagonism = {
            depends  = [
              hsPkgs.base
              hsPkgs.folgerhs
              hsPkgs.xml
            ];
          };
        };
      };
    }