{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kevin";
          version = "0.10.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "me@joelt.io";
        author = "Joel Taylor";
        homepage = "";
        url = "";
        synopsis = "a dAmn ↔ IRC proxy";
        description = "a dAmn ↔ IRC proxy";
        buildType = "Simple";
      };
      components = {
        exes = {
          kevin = {
            depends  = ([
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.cprng-aes
              hsPkgs.data-default
              hsPkgs.HTTP
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.regex-pcre-builtin
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.tls
              hsPkgs.tls-extra
            ] ++ optionals compiler.isGhc [
              hsPkgs.exceptions
              hsPkgs.lens
            ]) ++ pkgs.lib.optional compiler.isGhc hsPkgs.MonadCatchIO-transformers;
          };
        };
      };
    }