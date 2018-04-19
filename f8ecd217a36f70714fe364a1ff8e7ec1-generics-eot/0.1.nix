{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "generics-eot";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "soenkehahn@gmail.com";
        author = "";
        homepage = "https://github.com/soenkehahn/generics-eot#readme";
        url = "";
        synopsis = "A library for generic programming that aims to be easy to understand";
        description = "";
        buildType = "Simple";
      };
      components = {
        generics-eot = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.interpolate
              hsPkgs.doctest
            ];
          };
          quickcheck = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.mockery
              hsPkgs.interpolate
              hsPkgs.shake
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }