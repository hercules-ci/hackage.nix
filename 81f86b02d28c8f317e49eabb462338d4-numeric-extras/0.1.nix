{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "numeric-extras";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ekmett@gmail.com";
        author = "Edward Kmett";
        homepage = "http://github.com/ekmett/numeric-extras";
        url = "";
        synopsis = "Useful tools from the C standard library";
        description = "Useful tools from the C standard library";
        buildType = "Simple";
      };
      components = {
        numeric-extras = {
          depends  = [ hsPkgs.base ];
        };
      };
    }