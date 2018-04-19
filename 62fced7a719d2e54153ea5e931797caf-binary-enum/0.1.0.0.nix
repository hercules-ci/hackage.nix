{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "binary-enum";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015(c) Marcin Tolysz";
        maintainer = "tolysz@gmail.com";
        author = "Marcin Tolysz";
        homepage = "https://github.com/tolysz/binary-enum";
        url = "";
        synopsis = "Simple wrappers around enum types";
        description = "allowing to serise to/from binary both as values and bitmasks";
        buildType = "Simple";
      };
      components = {
        binary-enum = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
          ];
        };
      };
    }