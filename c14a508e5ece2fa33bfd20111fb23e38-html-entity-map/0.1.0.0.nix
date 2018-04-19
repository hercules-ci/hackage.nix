{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "html-entity-map";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mrkkrp/html-entity-map";
        url = "";
        synopsis = "Map from HTML5 entity names to the corresponding Unicode text";
        description = "Map from HTML5 entity names to the corresponding Unicode text.";
        buildType = "Simple";
      };
      components = {
        html-entity-map = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.html-entity-map
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }