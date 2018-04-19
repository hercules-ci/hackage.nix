{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "containers-unicode-symbols";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009–2010 Roel van Dijk <vandijk.roel@gmail.com>";
        maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
        author = "Roel van Dijk <vandijk.roel@gmail.com>";
        homepage = "http://haskell.org/haskellwiki/Unicode-symbols";
        url = "";
        synopsis = "Unicode alternatives for common functions and operators";
        description = "This package defines new symbols for a number of functions and\noperators in the containers package.\n\nAll symbols are documented with their actual definition and\ninformation regarding their Unicode code point. They should be\ncompletely interchangeable with their definitions.";
        buildType = "Simple";
      };
      components = {
        containers-unicode-symbols = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.containers
          ];
        };
      };
    }