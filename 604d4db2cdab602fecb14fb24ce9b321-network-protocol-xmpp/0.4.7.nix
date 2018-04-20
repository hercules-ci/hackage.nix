{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "network-protocol-xmpp";
          version = "0.4.7";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>, Stephan Maka <stephan@spaceboyz.net>";
        homepage = "https://john-millikin.com/software/haskell-xmpp/";
        url = "";
        synopsis = "Client library for the XMPP protocol.";
        description = "";
        buildType = "Simple";
      };
      components = {
        network-protocol-xmpp = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.gnuidn
            hsPkgs.gnutls
            hsPkgs.gsasl
            hsPkgs.libxml-sax
            hsPkgs.monads-tf
            hsPkgs.network
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.xml-types
          ];
        };
      };
    }