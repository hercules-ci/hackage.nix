{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "pop3-client";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009 Peter van den Brand";
        maintainer = "Peter van den Brand <peter@vdbrand.nl>";
        author = "Peter van den Brand";
        homepage = "http://patch-tag.com/r/pop3-client";
        url = "";
        synopsis = "POP3 Client Library";
        description = "pop3-client provides a Haskell library to implement a POP3 client.\n\n* Simple and safe API: connection is guaranteed to be closed, no need to know the POP3 protocol to use the API\n\n* Standards compliant\n\n* No dependencies (besides base, mtl and network libraries)";
        buildType = "Simple";
      };
      components = {
        pop3-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.mtl
          ];
        };
      };
    }