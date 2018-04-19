{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "web-mongrel2";
          version = "0.0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Clint Moore <cmoore@wamboli.com>";
        author = "Clint Moore";
        homepage = "http://github.com/cmoore/web-mongrel2";
        url = "";
        synopsis = "Bindings for the Mongrel2 web server.";
        description = "A simple handler API for Mongrel2.";
        buildType = "Simple";
      };
      components = {
        web-mongrel2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.json
            hsPkgs.parsec
            hsPkgs.system-uuid
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.haskell98
            hsPkgs.zeromq-haskell
            hsPkgs.template-haskell
            hsPkgs.HStringTemplate
          ];
        };
      };
    }