{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "z3-encoding";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Zhen Zhang <izgzhen@gmail.com>";
        author = "Zhen Zhang <izgzhen@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "High-level assertion encoding to Z3 solver";
        description = "A library targeting at providing high-level, extensible, easy to use Haskell interface to Z3 solver.";
        buildType = "Simple";
      };
      components = {
        z3-encoding = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.z3
          ];
        };
        tests = {
          z3-encoding-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.z3
              hsPkgs.z3-encoding
              hsPkgs.hspec
              hsPkgs.containers
            ];
          };
        };
      };
    }