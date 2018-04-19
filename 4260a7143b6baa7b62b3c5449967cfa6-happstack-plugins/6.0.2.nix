{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      tests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "happstack-plugins";
          version = "6.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Happstack team <happs@googlegroups.com>";
        author = "Happstack team, HAppS LLC";
        homepage = "http://happstack.com";
        url = "";
        synopsis = "The haskell application server stack + reload";
        description = "This library provides support for automatically recompiling and reloading modules into a running server.";
        buildType = "Simple";
      };
      components = {
        happstack-plugins = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.happstack-server
            hsPkgs.hinotify
            hsPkgs.mtl
            hsPkgs.plugins
            hsPkgs.template-haskell
          ];
        };
      };
    }