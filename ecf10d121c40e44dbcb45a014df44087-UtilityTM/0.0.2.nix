{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "UtilityTM";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://bitbucket.org/dibblego/utility-tm/";
        url = "";
        synopsis = "Utility functions that are missing from the standard library";
        description = "Utility functions that are missing from the standard library";
        buildType = "Simple";
      };
      components = {
        UtilityTM = {
          depends  = [ hsPkgs.base ];
        };
      };
    }