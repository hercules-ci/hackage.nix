{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "adict";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/adict";
        url = "";
        synopsis = "Approximate dictionary searching";
        description = "Approximate dictionary searching library.";
        buildType = "Simple";
      };
      components = {
        adict = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.array
            hsPkgs.PSQueue
            hsPkgs.binary
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.adict
            ];
          };
        };
      };
    }