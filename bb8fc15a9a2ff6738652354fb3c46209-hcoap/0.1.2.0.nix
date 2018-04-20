{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hcoap";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016, Ulf Lilleengen";
        maintainer = "ulf.lilleengen@gmail.com";
        author = "Ulf Lilleengen";
        homepage = "https://github.com/lulf/hcoap";
        url = "";
        synopsis = "CoAP implementation for Haskell.";
        description = "CoAP library for writing CoAP clients, servers or just for decoding and encoding\nCoAP messages. The Network.CoAP.Server and Network.CoAP.Client modules allows\nbuilding CoAP servers and clients on top of a messaging layer which provides\nreliable transport of CoAP requests/responses.";
        buildType = "Simple";
      };
      components = {
        hcoap = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.network
            hsPkgs.stm
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.random
            hsPkgs.async
            hsPkgs.network-uri
            hsPkgs.iproute
            hsPkgs.dns
          ];
        };
        exes = {
          hcoap-example-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
              hsPkgs.bytestring
              hsPkgs.network-uri
              hsPkgs.hcoap
            ];
          };
          hcoap-example-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
              hsPkgs.bytestring
              hsPkgs.network-uri
              hsPkgs.hcoap
            ];
          };
        };
        tests = {
          hcoap-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hcoap
              hsPkgs.network
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.random
              hsPkgs.async
              hsPkgs.bytestring
            ];
          };
        };
      };
    }