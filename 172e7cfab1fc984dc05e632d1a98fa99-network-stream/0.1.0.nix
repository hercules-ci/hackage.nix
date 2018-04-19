{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "network-stream";
          version = "0.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Jared Hance <jaredhance@gmail.com>";
        author = "Jared Hance";
        homepage = "";
        url = "";
        synopsis = "ByteString and Text streams for networking";
        description = "Provides bytestring and text streams which support both\nretry's and invalidation for sending information before all information\nis known. Includes support for enumerating over the chunks of bytes\nor chunks of text sent.";
        buildType = "Simple";
      };
      components = {
        network-stream = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.enumerator
            hsPkgs.transformers
            hsPkgs.network
            hsPkgs.stm
            hsPkgs.text
          ];
        };
      };
    }