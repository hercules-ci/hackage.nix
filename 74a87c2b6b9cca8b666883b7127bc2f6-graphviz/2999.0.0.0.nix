{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "graphviz";
          version = "2999.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Matthew Sackman, Ivan Lazar Miljenovic";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Matthew Sackman, Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "GraphViz wrapper for Haskell.";
        description = "Provides convenient functions to convert FGL\ngraphs into the Dot language used by the\nGraphViz <http://graphviz.org/> programs with a\nlarge degree of customisation for layout, etc.\nAlso allows a limited amount of parsing of Dot,\nand usage of GraphViz to attach positional data\nto each node and edge in the graph.";
        buildType = "Simple";
      };
      components = {
        graphviz = {
          depends  = [
            hsPkgs.base
            hsPkgs.extensible-exceptions
            hsPkgs.containers
            hsPkgs.process
            hsPkgs.array
            hsPkgs.fgl
            hsPkgs.polyparse
          ];
        };
      };
    }