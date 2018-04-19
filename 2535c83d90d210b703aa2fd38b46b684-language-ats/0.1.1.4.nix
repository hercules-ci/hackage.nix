{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "language-ats";
          version = "0.1.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "";
        url = "";
        synopsis = "Parser and pretty-printer for ATS.";
        description = "Parser and pretty-printer for [ATS](http://www.ats-lang.org/), written with Happy and Alex.";
        buildType = "Simple";
      };
      components = {
        language-ats = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.lens
            hsPkgs.deepseq
            hsPkgs.ansi-wl-pprint
            hsPkgs.composition-prelude
            hsPkgs.recursion-schemes
            hsPkgs.ansi-terminal
            hsPkgs.unordered-containers
            hsPkgs.composition-prelude
          ];
        };
        tests = {
          language-ats-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-ats
              hsPkgs.hspec
              hsPkgs.hspec-dirstream
              hsPkgs.system-filepath
            ];
          };
        };
        benchmarks = {
          language-ats-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-ats
              hsPkgs.criterion
            ];
          };
        };
      };
    }