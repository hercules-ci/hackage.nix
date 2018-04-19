{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "do-list";
          version = "0.8.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Taras Serduke";
        maintainer = "taras.serduke@gmail.com";
        author = "Taras Serduke";
        homepage = "https://github.com/tserduke/do-list";
        url = "";
        synopsis = "List construction with do notation";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        do-list = {
          depends  = [
            hsPkgs.base
            hsPkgs.dlist
          ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.do-list
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.do-list
              hsPkgs.hspec
            ];
          };
        };
      };
    }