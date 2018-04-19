{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      hello_hackage_visitor = false;
      turn_on_seqaid_plugin = true;
      omnitypic = false;
      test_seqaidpp = true;
      stats = true;
      using_sandbox = false;
      use_second_module = true;
      profile = false;
      use_growing_list = true;
      use_growing_list_reduction = true;
      use_infinite_list = false;
      use_strict_blob = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "leaky";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andrew Seniuk <rasfar@gmail.com>";
        author = "Andrew G. Seniuk";
        homepage = "http://fremissant.net/leaky";
        url = "";
        synopsis = "Robust space leak, and its strictification";
        description = "Robust space leak, and its strictification, for testing <http://hackage.haskell.org/package/deepseq-bounded deepseq-bounded> and <http://hackage.haskell.org/package/seqaid seqaid>.\n\nSee also the project <http://www.fremissant.net/leaky homepage> for more information.\n\nPlease share your comments on this <http://www.reddit.com/r/haskell/comments/2pscxh/ann_deepseqbounded_seqaid_leaky/ reddit> discussion.\n\nNOTE: Ignore the anonymous rogue failed build report below (at least, it appeared on all versions I uploaded so far). If you examine the log it's clear that the problem is theirs, and nothing to do with this package or its dependencies. It's a shame this is so prominently displayed and impossible to remedy, it makes unbroken packages seem broken to visitors, and it exerts negative pressure on the use of cpphs (since one can make this rogue report go away by pretending cpphs never existed and depending on the ubiquity of a system-wide cpp).";
        buildType = "Simple";
      };
      components = {
        exes = {
          leaky = {
            depends  = [
              hsPkgs.base
              hsPkgs.cpphs
              hsPkgs.random
              hsPkgs.deepseq-bounded
              hsPkgs.deepseq-generics
              hsPkgs.generics-sop
              hsPkgs.template-haskell
              hsPkgs.seqaid
            ] ++ pkgs.lib.optional _flags.omnitypic hsPkgs.ghc-prim;
          };
        };
      };
    }