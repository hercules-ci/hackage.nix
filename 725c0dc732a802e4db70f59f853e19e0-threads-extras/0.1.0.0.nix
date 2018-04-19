{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "threads-extras";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Author name here";
        maintainer = "example@example.com";
        author = "Author name here";
        homepage = "https://github.com/githubuser/threads-extras#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        threads-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.threads
            hsPkgs.stm
          ];
        };
        tests = {
          threads-extras-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.threads-extras
            ];
          };
        };
      };
    }