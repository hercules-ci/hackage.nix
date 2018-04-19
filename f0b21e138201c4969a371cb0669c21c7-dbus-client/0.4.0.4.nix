{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dbus-client";
          version = "0.4.0.4";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin";
        homepage = "http://john-millikin.com/software/haskell-dbus/";
        url = "";
        synopsis = "Monadic and object-oriented interfaces to DBus";
        description = "";
        buildType = "Simple";
      };
      components = {
        dbus-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.dbus-core
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.monads-tf
          ];
        };
      };
    }