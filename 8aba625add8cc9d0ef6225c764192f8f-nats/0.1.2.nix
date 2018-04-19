{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "nats";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/nats/";
        url = "";
        synopsis = "Haskell 98 natural numbers";
        description = "Haskell 98 natural numbers";
        buildType = "Simple";
      };
      components = {
        nats = {
          depends  = [ hsPkgs.base ];
        };
      };
    }