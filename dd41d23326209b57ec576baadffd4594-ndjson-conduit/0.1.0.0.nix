{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ndjson-conduit";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "srijs@airpost.net";
        author = "Sam Rijs";
        homepage = "https://github.com/srijs/haskell-ndjson-conduit";
        url = "";
        synopsis = "Conduit-based parsing and serialization for newline delimited JSON.";
        description = "";
        buildType = "Simple";
      };
      components = {
        ndjson-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.conduit
          ];
        };
      };
    }