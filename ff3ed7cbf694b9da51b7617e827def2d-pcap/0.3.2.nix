{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "pcap";
          version = "0.3.2";
        };
        license = "BSD-4-Clause";
        copyright = "";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan, Nick Burlett, Dominic Steinitz, Gregory Wright (original author)";
        homepage = "";
        url = "";
        synopsis = "A system-independent interface for user-level packet capture";
        description = "A system-independent interface for user-level packet capture";
        buildType = "Custom";
      };
      components = {
        pcap = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.network
            hsPkgs.time
          ];
        };
      };
    }