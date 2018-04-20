{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "CPBrainfuck";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas Davie (tom.davie@gmail.com)";
        author = "Thomas Davie";
        homepage = "";
        url = "";
        synopsis = "A simple Brainfuck interpretter.";
        description = "This is a very simple brainfuck interpretter, that's easy\nto understand.";
        buildType = "Simple";
      };
      components = {
        exes = {
          bf = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
            ];
          };
        };
      };
    }