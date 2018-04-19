{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "threepenny-editors";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "All Rights Reserved";
        maintainer = "pepeiborra@gmail.com";
        author = "Jose Iborra";
        homepage = "https://github.com/pepeiborra/threepenny-editors";
        url = "";
        synopsis = "Composable algebraic editors";
        description = "This package provides a type class 'Editable' and combinators to\neasily put together form-like editors for algebraic datatypes.\n\nNOTE: This library contains examples, but they are not built by default.\nTo build and install the example, use the @buildExamples@ flag like this\n\n@cabal install threepenny-editors -fbuildExamples@";
        buildType = "Simple";
      };
      components = {
        threepenny-editors = {
          depends  = [
            hsPkgs.base
            hsPkgs.profunctors
            hsPkgs.threepenny-gui
          ];
        };
        exes = {
          person = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.profunctors
              hsPkgs.threepenny-gui
              hsPkgs.threepenny-editors
            ];
          };
        };
      };
    }