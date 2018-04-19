{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "linux-namespaces";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marios Titas <rednebΑΤgmxDΟΤcom>";
        author = "Marios Titas <rednebΑΤgmxDΟΤcom>";
        homepage = "https://github.com/redneb/hs-linux-namespaces";
        url = "";
        synopsis = "Create new or enter an existing linux namespaces";
        description = "This library provides bindings to the @unshare(2)@ and @setns(2)@ linux\nsystem calls.";
        buildType = "Simple";
      };
      components = {
        linux-namespaces = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
        };
      };
    }