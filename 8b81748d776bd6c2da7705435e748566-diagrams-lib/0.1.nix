{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "diagrams-lib";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "byorgey@cis.upenn.edu";
        author = "Brent Yorgey";
        homepage = "http://code.google.com/p/diagrams/";
        url = "";
        synopsis = "Embedded domain-specific language for declarative graphics";
        description = "Diagrams is a flexible, extensible EDSL for creating\ngraphics of many types.  Graphics can be created\nin arbitrary vector spaces and rendered with\nmultiple backends.  diagrams-lib provides a\nstandard library of primitives and operations for\ncreating diagrams.  To get started using it, see\n\"Diagrams.Prelude\".";
        buildType = "Simple";
      };
      components = {
        diagrams-lib = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.diagrams-core
            hsPkgs.vector-space
            hsPkgs.colour
            hsPkgs.data-default
            hsPkgs.pretty
          ];
        };
      };
    }