{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "camh";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hironao Komatsu <hirkmt@gmail.com>";
        author = "Hironao Komatsu";
        homepage = "not yet available";
        url = "";
        synopsis = "Image converter to 256-colored text.";
        description = "Camh is a program to display image files onto text terminals.";
        buildType = "Simple";
      };
      components = {
        exes = {
          camh = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.terminfo
              hsPkgs.Imlib
            ];
          };
        };
      };
    }