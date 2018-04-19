{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "optparse-generic";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Auto-generate a command-line parser for your datatype";
        description = "This library auto-generates an @optparse-applicative@-compatible\n@Parser@ from any data type that derives the @Generic@ interface.\n\nSee the documentation in \"Options.Generic\" for an example of how to use\nthis library";
        buildType = "Simple";
      };
      components = {
        optparse-generic = {
          depends  = [
            hsPkgs.base
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.optparse-applicative
            hsPkgs.time
            hsPkgs.void
          ];
        };
      };
    }