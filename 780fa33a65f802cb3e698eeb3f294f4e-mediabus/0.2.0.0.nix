{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mediabus";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016,2017 Sven Heyll, Lindenbaum GmbH";
        maintainer = "sven.heyll@lindenbaum.eu";
        author = "Sven Heyll";
        homepage = "https://github.com/lindenbaum/mediabus";
        url = "";
        synopsis = "Multimedia streaming on top of Conduit";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        mediabus = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.array
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.conduit
            hsPkgs.conduit-combinators
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.deepseq
            hsPkgs.lens
            hsPkgs.lifted-async
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.parallel
            hsPkgs.primitive
            hsPkgs.process
            hsPkgs.random
            hsPkgs.resourcet
            hsPkgs.spool
            hsPkgs.stm
            hsPkgs.streaming-commons
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.vector
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.array
              hsPkgs.async
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.conduit-extra
              hsPkgs.conduit-network-rtp
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.monad-control
              hsPkgs.mtl
              hsPkgs.singletons
              hsPkgs.spool
              hsPkgs.stm
              hsPkgs.tagged
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.type-spec
              hsPkgs.vector
            ];
          };
        };
      };
    }