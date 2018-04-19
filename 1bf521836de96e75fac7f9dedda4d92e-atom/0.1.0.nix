{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "atom";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
        author = "Tom Hawkins <tomahawkins@gmail.com>";
        homepage = "http://patch-tag.com/r/atom/home";
        url = "";
        synopsis = "A DSL for embedded hard realtime applications.";
        description = "Atom is a Haskell DSL for designing hard realtime embedded programs. Based\non conditional term rewriting, atom will compile a collection of atomic\nstate transition rules to a C program with constant memory use and\ndeterministic execution time.";
        buildType = "Simple";
      };
      components = {
        atom = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.process
          ];
        };
      };
    }