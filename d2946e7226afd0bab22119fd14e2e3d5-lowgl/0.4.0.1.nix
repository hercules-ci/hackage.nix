{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lowgl";
          version = "0.4.0.1";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "evanrinehart@gmail.com";
        author = "Evan Rinehart";
        homepage = "";
        url = "";
        synopsis = "Basic gl wrapper and reference";
        description = "This library exposes a simplified subset of OpenGL that I hope is complete enough for following tutorials and making simple games or demos.";
        buildType = "Simple";
      };
      components = {
        lowgl = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.linear
            hsPkgs.gl
          ];
        };
      };
    }