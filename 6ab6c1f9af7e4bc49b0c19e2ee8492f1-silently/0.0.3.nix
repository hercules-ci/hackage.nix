{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "silently";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Trystan Spangler 2011";
        maintainer = "trystan.s@comcast.net";
        author = "Trystan Spangler";
        homepage = "https://github.com/trystan/silently";
        url = "https://github.com/trystan/silently";
        synopsis = "Prevent or capture writing to stdout and other handles.";
        description = "Prevent or capture writing to stdout and other handles.";
        buildType = "Simple";
      };
      components = {
        silently = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.ghc
          ];
        };
      };
    }