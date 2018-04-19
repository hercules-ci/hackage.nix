{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "path";
          version = "0.5.8";
        };
        license = "BSD-3-Clause";
        copyright = "2015–2016 FP Complete";
        maintainer = "Chris Done <chrisdone@fpcomplete.com>";
        author = "Chris Done <chrisdone@fpcomplete.com>";
        homepage = "";
        url = "";
        synopsis = "Support for well-typed paths";
        description = "Support for will-typed paths.";
        buildType = "Simple";
      };
      components = {
        path = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.template-haskell
            hsPkgs.deepseq
            hsPkgs.aeson
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.path
            ];
          };
        };
      };
    }