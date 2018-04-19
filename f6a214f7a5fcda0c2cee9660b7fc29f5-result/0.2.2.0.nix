{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "result";
          version = "0.2.2.0";
        };
        license = "MIT";
        copyright = "2016 Sam Rijs";
        maintainer = "srijs@airpost.net";
        author = "Sam Rijs";
        homepage = "https://github.com/srijs/haskell-result";
        url = "";
        synopsis = "Encode success or at least one error";
        description = "";
        buildType = "Simple";
      };
      components = {
        result = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.semigroups
            hsPkgs.keys
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.result
            ];
          };
        };
      };
    }