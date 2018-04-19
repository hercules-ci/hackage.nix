{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "redland";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "defanor@uberspace.net";
        author = "defanor";
        homepage = "";
        url = "";
        synopsis = "Redland RDF library bindings";
        description = "This package provides low-level and mid-level\nRedland RDF library bindings, as well as some\nutility functions. The bindings are not complete\nin this version, though many functions are\npresent.";
        buildType = "Simple";
      };
      components = {
        redland = {
          depends  = [ hsPkgs.base ];
        };
      };
    }