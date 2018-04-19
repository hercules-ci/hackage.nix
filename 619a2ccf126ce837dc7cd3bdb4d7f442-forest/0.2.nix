{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "forest";
          version = "0.2";
        };
        license = "MPL-2.0";
        copyright = "";
        maintainer = "me@shane.sh";
        author = "Shane O'Brien";
        homepage = "https://github.com/duairc/forest";
        url = "";
        synopsis = "Tree and Forest types";
        description = "Tree and Forest types, where the leafs and branches of a tree can store\ndifferent types of data, and forests are parameterised by an arbitrary\nfunctor (usually @[]@, but sometimes you might want @NonEmpty@ for example).";
        buildType = "Simple";
      };
      components = {
        forest = {
          depends  = (([
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.profunctors
            hsPkgs.semigroupoids
            hsPkgs.base
          ] ++ optionals compiler.isGhc [
            hsPkgs.semigroups
            hsPkgs.transformers
          ]) ++ pkgs.lib.optional compiler.isGhc hsPkgs.bifunctors) ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }