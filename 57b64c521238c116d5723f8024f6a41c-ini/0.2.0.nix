{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ini";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Quick and easy configuration files in the INI format.";
        description = "Quick and easy configuration files in the INI format.";
        buildType = "Simple";
      };
      components = {
        ini = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.unordered-containers
          ];
        };
      };
    }