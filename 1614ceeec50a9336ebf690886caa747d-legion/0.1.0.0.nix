{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "legion";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "2015-2016 Rick Owens";
        maintainer = "rick@owenssoftware.com";
        author = "Rick Owens";
        homepage = "https://github.com/taphu/legion";
        url = "";
        synopsis = "Distributed, stateful, homogeneous microservice framework.";
        description = "Legion is a framework for writing distributed,\nhomogeneous, stateful microservices in Haskell.";
        buildType = "Simple";
      };
      components = {
        legion = {
          depends  = [
            hsPkgs.Ranged-sets
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.binary-conduit
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.data-dword
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.monad-logger
            hsPkgs.network
            hsPkgs.scotty
            hsPkgs.scotty-resource
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.uuid
            hsPkgs.warp
          ];
        };
      };
    }