{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-expectations-match";
          version = "0.1.0.0";
        };
        license = "ISC";
        copyright = "2017 CJ Affiliate by Conversant";
        maintainer = "Alexis King <lexi.lambda@gmail.com>";
        author = "Alexis King <lexi.lambda@gmail.com>";
        homepage = "https://github.com/cjdev/hspec-expectations-match#readme";
        url = "";
        synopsis = "An hspec expectation that asserts a value matches a pattern.";
        description = "This package provides a single expectation for use with @hspec@,\n'shouldMatch'. The 'shouldMatch' expectation uses Template Haskell to assert\nthat a value matches a particular pattern.\n\n>>> \$([|Just True|] `shouldMatch` [p|Just _|])\n>>> \$([|Nothing|] `shouldMatch` [p|Just _|])\n\nAdditionally, any bindings created by the pattern will be returned if the\npattern is successfully matched, making it easier to extract the result of\nsome assertion and use it to make further assertions.\n\n>>> \$([|Just True|] `shouldMatch` [p|Just x|])\nTrue\n>>> \$([|[1, 2]|] `shouldMatch` [p|[x, y]|])\n(1, 2)";
        buildType = "Simple";
      };
      components = {
        hspec-expectations-match = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec-expectations
            hsPkgs.template-haskell
            hsPkgs.transformers-base
          ];
        };
        tests = {
          hspec-expectations-th-test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hspec-expectations-match
            ];
          };
        };
      };
    }