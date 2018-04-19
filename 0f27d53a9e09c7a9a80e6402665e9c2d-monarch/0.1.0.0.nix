{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "monarch";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
        author = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
        homepage = "https://github.com/notogawa/monarch";
        url = "";
        synopsis = "Monadic interface for TokyoTyrant.";
        description = "This package provides simple monadic interface for TokyoTyrant.";
        buildType = "Simple";
      };
      components = {
        monarch = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.tokyotyrant-haskell
          ];
        };
        tests = {
          unit-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.tokyotyrant-haskell
              hsPkgs.hspec
              hsPkgs.HUnit
            ];
          };
        };
      };
    }