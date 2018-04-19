{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "descrilo";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2013,2014 Marcelo Garlet Millani";
        maintainer = "marcelogmillani@gmail.com";
        author = "Marcelo Garlet Millani";
        homepage = "";
        url = "";
        synopsis = "Loads a list of items with fields";
        description = "Descrilo is a library that loads an INI-like file as a list of 'Description'S. Repeated elements are allowed.";
        buildType = "Simple";
      };
      components = {
        descrilo = {
          depends  = [ hsPkgs.base ];
        };
      };
    }