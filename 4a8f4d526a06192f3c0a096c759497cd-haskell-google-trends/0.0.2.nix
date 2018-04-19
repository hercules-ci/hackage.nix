{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-google-trends";
          version = "0.0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "contact@grzegorzgolda.com";
        author = "grzegorzgoldapl";
        homepage = "https://github.com/grzegorzgoldapl/haskell-google-trends";
        url = "";
        synopsis = "Simple library for accessing Google Trends";
        description = "";
        buildType = "Simple";
      };
      components = {
        haskell-google-trends = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-fake-user-agent
            hsPkgs.wreq
            hsPkgs.lens
            hsPkgs.bytestring
            hsPkgs.tagsoup
            hsPkgs.text
            hsPkgs.regex-base
            hsPkgs.regex-posix
          ];
        };
      };
    }