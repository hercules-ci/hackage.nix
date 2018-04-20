{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hadoop-tools";
          version = "0.3";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Jacob Stanley <jacob@stanley.io>";
        author = "Jacob Stanley, Conrad Parker";
        homepage = "http://github.com/jystic/hadoop-tools";
        url = "";
        synopsis = "Fast command line tools for working with Hadoop.";
        description = "Fast command line tools for working with Hadoop.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hh = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.boxes
              hsPkgs.bytestring
              hsPkgs.configurator
              hsPkgs.exceptions
              hsPkgs.filepath
              hsPkgs.hadoop-rpc
              hsPkgs.old-locale
              hsPkgs.optparse-applicative
              hsPkgs.protobuf
              hsPkgs.split
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.vector
            ];
          };
        };
      };
    }