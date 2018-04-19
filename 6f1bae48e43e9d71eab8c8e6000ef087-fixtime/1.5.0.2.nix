{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fixtime";
          version = "1.5.0.2";
        };
        license = "BSD-2-Clause";
        copyright = "2004, The University Court of the University of Glasgow.\n2004-2014, Ashley Yakeley.\n2014, Peter Harpending.";
        maintainer = "pharpend2@gmail.com";
        author = "Peter Harpending";
        homepage = "https://github.com/pharpend/fixtime";
        url = "";
        synopsis = "Some fixes to the time package";
        description = "";
        buildType = "Simple";
      };
      components = {
        fixtime = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
      };
    }