{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "applicative-quoters";
          version = "0.1.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Matt Morrow";
        maintainer = "";
        author = "Matt Morrow";
        homepage = "";
        url = "";
        synopsis = "Quasiquoters for idiom brackets and an applicative do-notation";
        description = "Quasiquoters taken from Matt Morrow's haskell-src-meta to implement\nConor McBride's idiom brackets, and a do-notation that only requires\nApplicative (and is correspondingly less powerful).";
        buildType = "Simple";
      };
      components = {
        applicative-quoters = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src-meta
            hsPkgs.notcpp
            hsPkgs.template-haskell
          ];
        };
      };
    }