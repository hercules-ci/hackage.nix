{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base48 = true;
      use-network-uri = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hackage-security";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2015 Well-Typed LLP";
        maintainer = "edsko@well-typed.com";
        author = "Edsko de Vries";
        homepage = "";
        url = "";
        synopsis = "Hackage security library";
        description = "The hackage security library provides both server and\nclient utilities for securing the Hackage package server\n(<http://hackage.haskell.org/>).  It is based on The Update\nFramework (<http://theupdateframework.com/>), a set of\nrecommendations developed by security researchers at\nvarious universities in the US as well as developers on the\nTor project (<https://www.torproject.org/>).\n\nThe current implementation supports only index signing,\nthereby enabling untrusted mirrors. It does not yet provide\nfacilities for author package signing.\n\nThe library has two main entry points:\n\"Hackage.Security.Client\" is the main entry point for\nclients (the typical example being @cabal@), and\n\"Hackage.Security.Server\" is the main entry point for\nservers (the typical example being @hackage-server@).\n\nThis is a beta release.";
        buildType = "Simple";
      };
      components = {
        hackage-security = {
          depends  = ([
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.ed25519
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.cryptohash
            hsPkgs.tar
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.zlib
            hsPkgs.template-haskell
            hsPkgs.ghc-prim
          ] ++ (if _flags.base48
            then [ hsPkgs.base ]
            else [
              hsPkgs.old-locale
            ])) ++ (if _flags.use-network-uri
            then [
              hsPkgs.network-uri
              hsPkgs.network
            ]
            else [ hsPkgs.network ]);
        };
      };
    }