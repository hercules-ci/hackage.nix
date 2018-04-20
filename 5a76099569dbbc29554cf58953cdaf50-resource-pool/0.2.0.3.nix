{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "resource-pool";
          version = "0.2.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2011 MailRank, Inc.";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "http://github.com/bos/pool";
        url = "";
        synopsis = "A high-performance striped resource pooling implementation";
        description = "A high-performance striped pooling abstraction for managing\nflexibly-sized collections of resources such as database\nconnections.";
        buildType = "Simple";
      };
      components = {
        resource-pool = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.monad-control
            hsPkgs.transformers
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.vector
          ];
        };
      };
    }