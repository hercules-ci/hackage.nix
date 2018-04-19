{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eliminators";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2017 Ryan Scott";
        maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
        author = "Ryan Scott";
        homepage = "https://github.com/RyanGlScott/eliminators";
        url = "";
        synopsis = "Dependently typed elimination functions using singletons";
        description = "This library provides eliminators for inductive data types,\nleveraging the power of the @singletons@ library to allow\ndependently typed elimination.";
        buildType = "Simple";
      };
      components = {
        eliminators = {
          depends  = [
            hsPkgs.base
            hsPkgs.singletons
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.eliminators
              hsPkgs.hspec
              hsPkgs.singletons
            ];
          };
        };
      };
    }