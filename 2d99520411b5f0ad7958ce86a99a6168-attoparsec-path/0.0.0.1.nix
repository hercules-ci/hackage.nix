{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "attoparsec-path";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "BSD-3";
        maintainer = "athan.clark@gmail.com";
        author = "Athan Clark";
        homepage = "https://github.com/athanclark/attoparsec-path#readme";
        url = "";
        synopsis = "Convenience bindings between path and attoparsec";
        description = "";
        buildType = "Simple";
      };
      components = {
        attoparsec-path = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.path
            hsPkgs.text
          ];
        };
        tests = {
          attoparsec-path-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.attoparsec-path
              hsPkgs.text
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }