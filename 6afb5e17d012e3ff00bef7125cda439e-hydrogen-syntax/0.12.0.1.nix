{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "hydrogen-syntax";
          version = "0.12.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "julian@scravy.de";
        author = "Julian Fleischer";
        homepage = "https://scravy.de/hydrogen-syntax/";
        url = "";
        synopsis = "Hydrogen Syntax";
        description = "";
        buildType = "Simple";
      };
      components = {
        hydrogen-syntax = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hydrogen-parsing
            hsPkgs.hydrogen-prelude
            hsPkgs.nicify
            hsPkgs.parsec
            hsPkgs.uuid
          ];
        };
      };
    }