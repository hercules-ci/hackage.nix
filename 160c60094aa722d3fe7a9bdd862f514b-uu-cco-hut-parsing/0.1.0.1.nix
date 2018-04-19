{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "uu-cco-hut-parsing";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2014 Utrecht University";
        maintainer = "Atze Dijkstra <atze@uu.nl>";
        author = "Stefan Holdermans <stefan@holdermans.nl>";
        homepage = "https://github.com/UU-ComputerScience/uu-cco";
        url = "";
        synopsis = "Utilities for compiler construction: Feedback wrapper around parser in uulib";
        description = "A small utility library accompanying the course on\nCompiler Construction (INFOMCCO) at Utrecht Univerity.";
        buildType = "Simple";
      };
      components = {
        uu-cco-hut-parsing = {
          depends  = [
            hsPkgs.base
            hsPkgs.uulib
            hsPkgs.uu-cco
          ];
        };
      };
    }