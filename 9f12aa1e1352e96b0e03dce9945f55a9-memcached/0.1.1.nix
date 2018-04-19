{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "memcached";
          version = "0.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Alson Kemp <alson@alsonkemp.com>";
        author = "Evan Martin <martine@danga.com>";
        homepage = "http://neugierig.org/software/darcs/browse/?r=haskell-memcached;a=summary";
        url = "";
        synopsis = "haskell bindings for memcached";
        description = "haskell bindings for memcached";
        buildType = "Simple";
      };
      components = {
        memcached = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
          ];
        };
      };
    }