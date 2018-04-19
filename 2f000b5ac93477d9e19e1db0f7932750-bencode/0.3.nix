{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "bencode";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2005-2007, Lemmih";
        maintainer = "Lemmih (lemmih@gmail.com)";
        author = "Lemmih (lemmih@gmail.com), Jesper Louis Andersen";
        homepage = "";
        url = "";
        synopsis = "Parser and printer for bencoded data.";
        description = "";
        buildType = "Simple";
      };
      components = {
        bencode = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.binary
          ];
        };
      };
    }