{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "nlp-scores";
          version = "0.5.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gchrupala@lsv.uni-saarland.de";
        author = "Grzegorz Chrupala";
        homepage = "https://bitbucket.org/gchrupala/lingo";
        url = "";
        synopsis = "Scoring functions commonly used for evaluation in NLP and IR";
        description = "Scoring functions commonly used for evaluation in NLP and IR";
        buildType = "Simple";
      };
      components = {
        nlp-scores = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }