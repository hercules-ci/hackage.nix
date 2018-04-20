{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tuple-hlist";
          version = "0.2.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2012-2014, Nicolas Dudebout <nicolas.dudebout@gatech.edu>";
        maintainer = "Nicolas Dudebout <nicolas.dudebout@gatech.edu>";
        author = "Nicolas Dudebout";
        homepage = "http://github.com/dudebout/tuple-hlist";
        url = "";
        synopsis = "Functions to convert between tuples and HLists.";
        description = "Functions to convert between tuples and HLists, overloaded on tuple size.";
        buildType = "Simple";
      };
      components = {
        tuple-hlist = {
          depends  = [
            hsPkgs.base
            hsPkgs.OneTuple
            hsPkgs.HList
          ];
        };
      };
    }