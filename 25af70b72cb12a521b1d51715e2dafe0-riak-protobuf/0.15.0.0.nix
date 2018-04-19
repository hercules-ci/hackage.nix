{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "riak-protobuf";
          version = "0.15.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright 2011 MailRank, Inc.\nPortions copyright 2007-2010 Basho Technologies, Inc.";
        maintainer = "Bryan O'Sullivan <bos@mailrank.com>";
        author = "Bryan O'Sullivan <bos@mailrank.com>";
        homepage = "http://github.com/mailrank/riak-haskell-client";
        url = "";
        synopsis = "Haskell types for the Riak protocol buffer API";
        description = "A set of Haskell types for interacting with the protocol buffer\nAPI of the Riak decentralized data store.";
        buildType = "Simple";
      };
      components = {
        riak-protobuf = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.protocol-buffers
            hsPkgs.protocol-buffers-descriptor
          ];
        };
      };
    }