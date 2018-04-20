{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hoppy-runtime";
          version = "0.3.1";
        };
        license = "Apache-2.0";
        copyright = "Copyright 2015-2017 Bryan Gardiner";
        maintainer = "Bryan Gardiner <bog@khumba.net>";
        author = "Bryan Gardiner <bog@khumba.net>";
        homepage = "http://khumba.net/projects/hoppy";
        url = "";
        synopsis = "C++ FFI generator - Runtime support";
        description = "Hoppy generates Haskell bindings to C++ libraries.\n\nThis package provides common runtime functionality used by generated\nbindings.";
        buildType = "Simple";
      };
      components = {
        hoppy-runtime = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
      };
    }