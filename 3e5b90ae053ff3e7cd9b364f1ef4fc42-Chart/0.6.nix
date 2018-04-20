{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Chart";
          version = "0.6";
        };
        license = "BSD-3-Clause";
        copyright = "Tim Docker, 2006";
        maintainer = "Tim Docker <tim@dockerz.net>";
        author = "Tim Docker <tim@dockerz.net>";
        homepage = "http://www.dockerz.net/software/chart.html";
        url = "";
        synopsis = "A library for generating 2D Charts and Plots";
        description = "A library for generating 2D Charts and Plots, based upon the cairo graphics library.";
        buildType = "Simple";
      };
      components = {
        Chart = {
          depends  = [
            hsPkgs.gtk
            hsPkgs.cairo
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.old-locale
              hsPkgs.old-time
            ]
            else [ hsPkgs.base ]);
        };
      };
    }