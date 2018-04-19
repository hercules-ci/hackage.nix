{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.24";
        identifier = {
          name = "nest";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Mark Hibberd";
        maintainer = "Mark Hibberd <mark@hibberd.id.au>";
        author = "Mark Hibberd <mark@hibberd.id.au>";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Environment variable combinators.";
        buildType = "Simple";
      };
      components = {
        nest = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unix
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hedgehog
              hsPkgs.nest
              hsPkgs.text
            ];
          };
        };
      };
    }