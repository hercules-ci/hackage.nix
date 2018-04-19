{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "URLT";
          version = "0.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Library for maintaining correctness of URLs within an application.";
        description = "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.";
        buildType = "Simple";
      };
      components = {
        URLT = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.Consumer
            hsPkgs.template-haskell
            hsPkgs.happstack-server
            hsPkgs.QuickCheck
            hsPkgs.hsx
            hsPkgs.hsp
            hsPkgs.applicative-extras
          ];
        };
      };
    }