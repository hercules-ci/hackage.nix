{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      benchmark = false;
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hedis";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Falko Peters";
        maintainer = "falko.peters@gmail.com";
        author = "Falko Peters";
        homepage = "https://github.com/informatikr/hedis";
        url = "";
        synopsis = "Client library for the Redis datastore: supports full command set,\npipelining.";
        description = "Redis is an open source, advanced key-value store. It is often referred to\nas a data structure server since keys can contain strings, hashes, lists,\nsets and sorted sets. This library is a Haskell client for the Redis\ndatastore. Compared to other Haskell client libraries it has some\nadvantages:\n\n[Complete Redis 2.4 command set:] All Redis commands\n(<http://redis.io/commands>) are available as haskell functions, except\nfor the MONITOR and SYNC commands. Additionally, a low-level API is\nexposed that  makes it easy for the library user to implement additional\ncommands, such as new commands from an experimental Redis version.\n\n[Automatic Optimal Pipelining:] Commands are pipelined\n(<http://redis.io/topics/pipelining>) as much as possible without any\nwork by the user. See\n<http://informatikr.com/2012/redis-pipelining.html> for a\ntechnical explanation of automatic optimal pipelining.\n\n[Enforced Pub\\/Sub semantics:] When subscribed to the Redis Pub\\/Sub server\n(<http://redis.io/topics/pubsub>), clients are not allowed to issue\ncommands other than subscribing to or unsubscribing from channels. This\nlibrary uses the type system to enforce the correct behavior.\n\n[Connect via TCP or Unix Domain Socket:] TCP sockets are the default way to\nconnect to a Redis server. For connections to a server on the same\nmachine, Unix domain sockets offer higher performance than the standard\nTCP connection.\n\nFor detailed documentation, see the \"Database.Redis\" module.\n\n[Changes since version 0.3.2]\n\n* The following commands got a 'Maybe' added to their return type, to\nproperly handle Redis returning @nil@-replies: @brpoplpush, lindex, lpop,\nobjectEncoding, randomkey, rpop, rpoplpush, spop, srandmember, zrank,\nzrevrank, zscore@.\n\n* Updated dependencies on @bytestring-lexing@ and @stm@.\n\n* Minor improvements and fixes to the documentation.\n";
        buildType = "Simple";
      };
      components = {
        hedis = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-lexing
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.resource-pool
            hsPkgs.stm
            hsPkgs.time
          ];
        };
        exes = {
          hedis-benchmark = {
            depends  = optionals _flags.benchmark [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.hedis
              hsPkgs.time
            ];
          };
          hedis-test = {
            depends  = optionals _flags.test [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hedis
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.time
            ];
          };
        };
      };
    }