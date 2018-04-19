{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "zeromq-haskell";
          version = "0.5.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2011 zeromq-haskell authors";
        maintainer = "toralf.wittner@gmail.com";
        author = "Toralf Wittner";
        homepage = "http://github.com/twittner/zeromq-haskell/";
        url = "";
        synopsis = "bindings to zeromq";
        description = "Bindings to zeromq (http://zeromq.org)";
        buildType = "Simple";
      };
      components = {
        zeromq-haskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.containers
            hsPkgs.bytestring
          ];
          libs = [ pkgs.zmq ];
        };
      };
    }