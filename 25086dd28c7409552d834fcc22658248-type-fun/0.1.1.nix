{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "type-fun";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "s9gf4ult@gmail.com";
        author = "Aleksey Uimanov";
        homepage = "https://github.com/s9gf4ult/type-fun";
        url = "";
        synopsis = "Collection of widely reimplemented type families";
        description = "";
        buildType = "Simple";
      };
      components = {
        type-fun = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.type-fun
            ];
          };
        };
      };
    }