{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "queuelike";
          version = "1.0.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "wasserman.louis@gmail.com";
        author = "Louis Wasserman";
        homepage = "";
        url = "";
        synopsis = "A library of queuelike data structures, both functional and stateful.";
        description = "Contains several implementations of data structures implementing a /single-in, single-out/ paradigm.  Intended to be a better, more useful replacement for pqueue-mtl.\nIn particular, includes an experimental and possibly genuinely new trie-based priority queue on strings.  Feedback is appreciated.";
        buildType = "Simple";
      };
      components = {
        queuelike = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.stateful-mtl
          ];
        };
      };
    }