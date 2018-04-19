{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cakyrespa";
          version = "0.0.26";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "iocikun juj <PAF01143@nifty.ne.jp>";
        author = "iocikun juj <PAF01143@nifty.ne.jp>";
        homepage = "http://homepage3.nifty.com/salamander/myblog/cakyrespa.html";
        url = "";
        synopsis = "run turtle like LOGO with lojban";
        description = "run turtle like LOGO with lojban\n\nThis is alpha version.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cakyrespa = {
            depends  = [
              hsPkgs.base
              hsPkgs.lojbanParser
              hsPkgs.gluturtle
              hsPkgs.GLUT
              hsPkgs.yjsvg
              hsPkgs.yjtools
            ];
          };
        };
      };
    }