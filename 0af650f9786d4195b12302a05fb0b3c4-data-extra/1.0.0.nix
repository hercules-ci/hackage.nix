{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "data-extra";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Extra utilities for working on Data.* types.";
        description = "Extra utilities for working on Data.* types.";
        buildType = "Simple";
      };
      components = {
        data-extra = {
          depends  = [ hsPkgs.base ];
        };
      };
    }