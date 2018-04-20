{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hcheat";
          version = "2010.1.16";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/hcheat/";
        url = "";
        synopsis = "A collection of code cheatsheet";
        description = "Starting with Google Analytics";
        buildType = "Simple";
      };
      components = {
        hcheat = {
          depends  = [
            hsPkgs.base
            hsPkgs.mps
          ];
        };
      };
    }