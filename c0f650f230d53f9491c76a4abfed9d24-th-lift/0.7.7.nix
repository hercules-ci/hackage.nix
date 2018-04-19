{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "th-lift";
          version = "0.7.7";
        };
        license = "BSD-3-Clause";
        copyright = "© 2006 Ian Lynagh, © 2010-2014 Mathieu Boespflug";
        maintainer = "Mathieu Boespflug <mboes@tweag.net>";
        author = "Ian Lynagh";
        homepage = "http://github.com/mboes/th-lift";
        url = "";
        synopsis = "Derive Template Haskell's Lift class for datatypes.";
        description = "Derive Template Haskell's Lift class for datatypes.";
        buildType = "Simple";
      };
      components = {
        th-lift = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ] ++ (if compiler.isGhc
            then [
              hsPkgs.packedstring
              hsPkgs.template-haskell
            ]
            else [
              hsPkgs.template-haskell
            ]);
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.th-lift
            ] ++ (if compiler.isGhc
              then [
                hsPkgs.packedstring
                hsPkgs.template-haskell
              ]
              else [
                hsPkgs.template-haskell
              ]);
          };
        };
      };
    }