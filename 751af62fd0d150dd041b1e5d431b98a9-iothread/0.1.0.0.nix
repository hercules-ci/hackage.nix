{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "iothread";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "t.t.mc1192.sf@gmail.com";
        author = "tattsun";
        homepage = "https://github.com/tattsun/iothread";
        url = "";
        synopsis = "run IOs in a single thread";
        description = "run IOs in a single thread";
        buildType = "Simple";
      };
      components = {
        iothread = {
          depends  = [ hsPkgs.base ];
        };
      };
    }