{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      hello_hackage_visitor = false;
      ghc_710 = false;
      try_inject_noinline_on_requested_binds = false;
      seqable_only = false;
      th_type_in_types_ann = false;
      seqaidpp_types = true;
      infer_top_level_types = false;
      demo_mode = true;
      dbg_seqaid = true;
      no_top_level_seqinj_dummies = false;
      nfdatan_only = false;
      show_type = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "seqaid";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andrew Seniuk <rasfar@gmail.com>";
        author = "Andrew G. Seniuk";
        homepage = "http://fremissant.net/seqaid";
        url = "";
        synopsis = "Dynamic strictness control, including space leak repair";
        description = "Seqaid is a GHC plugin for non-invasive auto-instrumentation of dynamic strictness (and parallelism) control, shortly to include optimisation for automated space leak relief using minimal strictification. [The optimiser is still in development however.]\n\nRefer to the seqaid <http://www.fremissant.net/seqaid homepage> for more information.\n\nPlease share your comments on this <http://www.reddit.com/r/haskell/comments/2pscxh/ann_deepseqbounded_seqaid_leaky/ reddit> discussion.";
        buildType = "Simple";
      };
      components = {
        seqaid = {
          depends  = ((([
            hsPkgs.base
            hsPkgs.cpphs
            hsPkgs.deepseq-bounded
            hsPkgs.syb
            hsPkgs.containers
            hsPkgs.regex-pcre
            hsPkgs.array
            hsPkgs.mtl
          ] ++ [
            hsPkgs.ghc-paths
            hsPkgs.temporary
            hsPkgs.transformers
            hsPkgs.exceptions
            hsPkgs.filepath
          ]) ++ [
            hsPkgs.ghc
            hsPkgs.template-haskell
          ]) ++ pkgs.lib.optional _flags.seqable_only hsPkgs.generics-sop) ++ pkgs.lib.optionals (!_flags.demo_mode) [
            hsPkgs.hashtables
            hsPkgs.hashable
          ];
        };
        exes = {
          seqaid = {
            depends  = [
              hsPkgs.base
              hsPkgs.cpphs
              hsPkgs.temporary
              hsPkgs.directory
              hsPkgs.process
            ];
          };
          seqaidpp = {
            depends  = [
              hsPkgs.base
              hsPkgs.cpphs
              hsPkgs.regex-base
              hsPkgs.regex-pcre
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.Cabal
            ];
          };
        };
      };
    }