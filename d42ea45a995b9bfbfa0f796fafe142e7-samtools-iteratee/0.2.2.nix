{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      utilities = false;
    } // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "samtools-iteratee";
          version = "0.2.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "nick@ingolia.org";
        author = "Nicholas Ingolia";
        homepage = "";
        url = "";
        synopsis = "Iteratee interface to SamTools library";
        description = "Iteratee interface to SamTools library";
        buildType = "Simple";
      };
      components = {
        samtools-iteratee = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.samtools
            hsPkgs.transformers
            hsPkgs.iteratee
          ];
        };
        exes = {
          bam-filter = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.samtools
              hsPkgs.transformers
              hsPkgs.iteratee
              hsPkgs.monads-tf
            ];
          };
        };
      };
    }