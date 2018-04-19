{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "text-format";
          version = "0.3.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "https://github.com/bos/text-format";
        url = "";
        synopsis = "Text formatting";
        description = "A text formatting library optimized for both ease of use and high\nperformance.";
        buildType = "Simple";
      };
      components = {
        text-format = {
          depends  = ([
            hsPkgs.array
            hsPkgs.base
            hsPkgs.double-conversion
            hsPkgs.ghc-prim
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.integer-gmp) ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.integer;
        };
      };
    }