{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "process-listlike";
          version = "0.9";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "David Lazar, Bas van Dijk, David Fox";
        homepage = "http://src.seereason.com/process-listlike";
        url = "";
        synopsis = "Enhanced version of process-extras";
        description = "Extra functionality for the Process library <http://hackage.haskell.org/package/process>.\nThis is a drop-in replacement for <http://hackage.haskell.org/package/process-extras>,\nwhich adds support for creating processes from a CreateProcess, more access to the\ninternals, and completes support for the String type.";
        buildType = "Simple";
      };
      components = {
        process-listlike = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.HUnit
            hsPkgs.ListLike
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.text
            hsPkgs.utf8-string
          ];
        };
        exes = {
          process-listlike-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.HUnit
              hsPkgs.ListLike
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.process-listlike
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.unix
            ];
          };
        };
      };
    }