{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "implicit-params";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "shane@duairc.com";
        author = "Shane O'Brien";
        homepage = "http://github.com/duairc/implicit";
        url = "";
        synopsis = "Named and unnamed implicit parameters with defaults.";
        description = "Named and unnamed implicit parameters with defaults using type classes and\nconstraint hacks. For examples, see \"Data.Implicit\".";
        buildType = "Simple";
      };
      components = {
        implicit-params = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
          ];
        };
      };
    }