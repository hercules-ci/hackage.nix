{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      minisat = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "jukebox";
          version = "0.2.20";
        };
        license = "BSD-3-Clause";
        copyright = "2009-2017 Nick Smallbone, Koen Claessen, Ann Lillieström";
        maintainer = "nicsma@chalmers.se";
        author = "Nick Smallbone";
        homepage = "";
        url = "";
        synopsis = "A first-order reasoning toolbox";
        description = "Jukebox is a suite of tools for transforming problems in first-order logic.\nIt reads problems in TPTP (FOF and TFF) format.\n\nCurrently it can translate typed problems to untyped (by efficiently\nencoding types) and clausify problems (both typed and untyped).";
        buildType = "Simple";
      };
      components = {
        jukebox = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.transformers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.pretty
            hsPkgs.symbol
            hsPkgs.dlist
            hsPkgs.process
            hsPkgs.containers
            hsPkgs.uglymemo
          ] ++ pkgs.lib.optional _flags.minisat hsPkgs.minisat;
        };
        exes = {
          jukebox = {
            depends  = [
              hsPkgs.base
              hsPkgs.jukebox
            ];
          };
        };
      };
    }