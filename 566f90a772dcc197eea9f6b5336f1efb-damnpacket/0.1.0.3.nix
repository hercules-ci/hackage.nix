{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "damnpacket";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "me@joelt.io";
        author = "Joel Taylor";
        homepage = "https://github.com/joelteon/damnpacket";
        url = "";
        synopsis = "Parsing dAmn packets";
        description = "";
        buildType = "Simple";
      };
      components = {
        damnpacket = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.text
          ];
        };
        tests = {
          render = {
            depends  = [
              hsPkgs.base
              hsPkgs.damnpacket
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.text
            ];
          };
        };
        benchmarks = {
          parse = {
            depends  = [
              hsPkgs.base
              hsPkgs.damnpacket
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.text
            ];
          };
        };
      };
    }