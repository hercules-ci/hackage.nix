{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "markdown-unlit";
          version = "0.4.1";
        };
        license = "MIT";
        copyright = "(c) 2012-2015 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "https://github.com/sol/markdown-unlit#readme";
        url = "";
        synopsis = "Literate Haskell support for Markdown";
        description = "Documentation is here: <https://github.com/sol/markdown-unlit#readme>";
        buildType = "Simple";
      };
      components = {
        markdown-unlit = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
          ];
        };
        exes = {
          markdown-unlit = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.markdown-unlit
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.directory
              hsPkgs.hspec
              hsPkgs.silently
              hsPkgs.stringbuilder
              hsPkgs.temporary
            ];
          };
        };
      };
    }