{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "besout";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "abdelwahebmiled@gmail.com";
        author = "Abdelwaheb Miled";
        homepage = "";
        url = "";
        synopsis = "Extended GCD of polynomials over F_p[x]";
        description = "";
        buildType = "Simple";
      };
      components = {
        besout = {
          depends  = [ hsPkgs.base ];
        };
      };
    }