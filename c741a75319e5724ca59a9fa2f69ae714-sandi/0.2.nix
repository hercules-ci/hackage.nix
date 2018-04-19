{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sandi";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Magnus Therning, 2012";
        maintainer = "magnus@therning.org";
        author = "Magnus Therning";
        homepage = "http://hackage.haskell.org/package/sandi";
        url = "";
        synopsis = "Data encoding library";
        description = "Reasonably fast data encoding library.";
        buildType = "Simple";
      };
      components = {
        sandi = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.resourcet
          ];
        };
        tests = {
          sandi-tests = {
            depends  = [
              hsPkgs.sandi
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-th
              hsPkgs.test-framework
            ];
          };
        };
        benchmarks = {
          sandi-bench = {
            depends  = [
              hsPkgs.sandi
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
            ];
          };
        };
      };
    }