{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskell-tyrant";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Travis Brady <travis.brady@gmail.com>";
        author = "Travis Brady <travis.brady@gmail.com>";
        homepage = "http://github.com/travisbrady";
        url = "";
        synopsis = "Haskell implementation of the Tokyo Tyrant binary protocol";
        description = "A pure Haskell implementation of the Tokyo Tyrant binary protocol.\nTokyo Tyrant is a database server for the Tokyo Cabinet\ndatabase library.  http://tokyocabinet.sourceforge.net/tyrantdoc/";
        buildType = "Simple";
      };
      components = {
        haskell-tyrant = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.network-bytestring
          ];
        };
      };
    }