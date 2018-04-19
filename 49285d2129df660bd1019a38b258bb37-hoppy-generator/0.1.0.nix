{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hoppy-generator";
          version = "0.1.0";
        };
        license = "AGPL-3.0-only";
        copyright = "Copyright 2015-2016 Bryan Gardiner";
        maintainer = "Bryan Gardiner <bog@khumba.net>";
        author = "Bryan Gardiner <bog@khumba.net>";
        homepage = "http://khumba.net/projects/hoppy";
        url = "";
        synopsis = "C++ FFI generator - Code generator";
        description = "Hoppy generates Haskell bindings to C++ libraries.\n\nThis package is the code generator.";
        buildType = "Simple";
      };
      components = {
        hoppy-generator = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.haskell-src
            hsPkgs.mtl
          ];
        };
      };
    }