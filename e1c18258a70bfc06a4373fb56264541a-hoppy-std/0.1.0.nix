{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hoppy-std";
          version = "0.1.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright 2015-2016 Bryan Gardiner";
        maintainer = "Bryan Gardiner <bog@khumba.net>";
        author = "Bryan Gardiner <bog@khumba.net>";
        homepage = "http://khumba.net/projects/hoppy";
        url = "";
        synopsis = "C++ FFI generator - Standard library bindings";
        description = "Hoppy generates Haskell bindings to C++ libraries.\n\nThis package contains definitions for the C++ standard library.";
        buildType = "Simple";
      };
      components = {
        hoppy-std = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.haskell-src
            hsPkgs.hoppy-generator
          ];
        };
      };
    }