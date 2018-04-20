{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "reflection";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Edward A. Kmett, 2004 Oleg Kiselyov and Chung-chieh Shan";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Oleg Kiselyov and Chung-chieh Shan";
        homepage = "http://www.cs.rutgers.edu/~ccshan/prepose/prepose.pdf";
        url = "";
        synopsis = "Functional Pearl: Implicit Configurations";
        description = "Implementation of the code in \"Functional Pearl: Implicit Configurations\" by Oleg Kiselyov and Chung-chieh Shan";
        buildType = "Simple";
      };
      components = {
        reflection = {
          depends  = [ hsPkgs.base ];
        };
      };
    }