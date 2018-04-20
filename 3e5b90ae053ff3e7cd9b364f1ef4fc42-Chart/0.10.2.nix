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
          version = "0.10.2";
        };
        license = "BSD-3-Clause";
        copyright = "Tim Docker, 2006-2009";
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
            hsPkgs.time
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.data-accessor
            hsPkgs.data-accessor-template
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.mtl
              hsPkgs.array
            ]
            else [ hsPkgs.base ]);
        };
      };
    }