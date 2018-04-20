{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pidfile";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jon.petter.bergman@gmail.com";
        author = "Jon Petter Bergman";
        homepage = "https://github.com/jonpetterbergman/pidfile";
        url = "";
        synopsis = "Run an IO action protected by a pidfile";
        description = "Run an IO action protected by a pidfile. This will prevent\nmore than one instance of your program to run at a time.";
        buildType = "Simple";
      };
      components = {
        pidfile = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
        };
      };
    }