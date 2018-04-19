{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "ipython-kernel";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.gibiansky@gmail.com";
        author = "Andrew Gibiansky";
        homepage = "http://github.com/gibiansky/IHaskell";
        url = "";
        synopsis = "A library for creating kernels for IPython frontends";
        description = "ipython-kernel is a library for communicating with frontends for the interactive IPython framework. It is used extensively in IHaskell, the interactive Haskell environment.";
        buildType = "Simple";
      };
      components = {
        ipython-kernel = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.unix
            hsPkgs.uuid
            hsPkgs.zeromq4-haskell
          ];
        };
      };
    }