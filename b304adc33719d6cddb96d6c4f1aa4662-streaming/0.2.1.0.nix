{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streaming";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "andrew.thaddeus@gmail.com, what_is_it_to_do_anything@yahoo.com";
        author = "michaelt";
        homepage = "https://github.com/haskell-streaming/streaming";
        url = "";
        synopsis = "an elementary streaming prelude and general stream type.";
        description = "This package contains two modules, <http://hackage.haskell.org/package/streaming/docs/Streaming.html Streaming>\nand <http://hackage.haskell.org/package/streaming/docs/Streaming-Prelude.html Streaming.Prelude>.\nThe principal module, <http://hackage.haskell.org/package/streaming-0.1.4.3/docs/Streaming-Prelude.html Streaming.Prelude>, exports an elementary streaming prelude focused on\na simple \\\"source\\\" or \\\"producer\\\" type, namely @Stream (Of a) m r@.\nThis is a sort of effectful version of\n@([a],r)@ in which successive elements of type @a@ arise from some sort of monadic\naction before the succession ends with a value of type @r@.\nEverything in the library is organized to make\nprogramming with this type as simple as possible,\nby the simple expedient of making it as close to @Prelude@\nand @Data.List@ as possible. Thus for example\nthe trivial program\n\n> >>> S.sum \$ S.take 3 (S.readLn :: Stream (Of Int) IO ())\n> 1<Enter>\n> 2<Enter>\n> 3<Enter>\n> 6 :> ()\n\nsums the first three valid integers from user input. Similarly,\n\n> >>> S.stdoutLn \$ S.map (map toUpper) \$ S.take 2 S.stdinLn\n> hello<Enter>\n> HELLO\n> world!<Enter>\n> WORLD!\n\nupper-cases the first two lines from stdin as they arise,\nand sends them to stdout. And so on,\nwith filtering, mapping, breaking, chunking, zipping, unzipping, replicating\nand so forth:\nwe program with streams of @Int@s or @String@s directly as\nif they constituted something like a list. That's because streams really do constitute something\nlike a list, and the associated operations can mostly have the same names.\n(A few, like @reverse@, don't stream and thus disappear;\nothers like @unzip@ are here given properly streaming formulation for the first time.)\nAnd we everywhere\noppose \\\"extracting a pure list from IO\\\",\nwhich is the origin of typical Haskell memory catastrophes.\nBasically any case where you are\ntempted to use @mapM@, @replicateM@, @traverse@ or @sequence@\nwith Haskell lists, you would do better to use something like\n@Stream (Of a) m r@. The type signatures are a little fancier, but\nthe programs themselves are mostly the same. /In fact, they are mostly simpler./ Thus,\nconsider the trivial demo program mentioned in\n<http://stackoverflow.com/questions/24068399/haskell-performance-of-iorefs this SO question>\n\n> main = mapM newIORef [1..10^8::Int] >>= mapM readIORef >>= mapM_ print\n\nThe new user notices that this exhausts memory, and worries about the efficiency of Haskell @IORefs@.\nBut of course it exhausts memory! Look what it says!\nThe problem is immediately cured by writing\n\n> main = S.print \$ S.mapM readIORef \$ S.mapM newIORef \$ S.each [1..10^8::Int]\n\nwhich really does what the other program was meant to do,\nuses no more memory than @hello-world@, /and is simpler anyway/, since it\ndoesn't involve the detour of \\\"extracting a list from IO\\\". Almost\nevery use of list @mapM@, @replicateM@, @traverse@ and @sequence@ produces\nthis problem on a smaller scale. People get used to it, as if it were\ncharacteristic of Haskell programs to use a lot of memory. But in truth\n\\\"extracting a list or sequence from IO\\\" is mostly just bad practice pure and simple.\nOf course, @mapM@, @replicateM@, @traverse@ and @sequence@ make sense for lists,\nunder certain conditions! But @unsafePerformIO@ also makes sense under\ncertain conditions.\n\nThe <http://hackage.haskell.org/package/streaming-0.1.4.3/docs/Streaming.html Streaming> module exports the general type,\n@Stream f m r@, which can be used to stream successive distinct\nsteps characterized by /any/\nfunctor @f@, though we are mostly interested in organizing computations\nof the form @Stream (Of a) m r@. The streaming-IO libraries have\nvarious devices for dealing\nwith effectful variants of @[a]@ or @([a],r)@ in which the emergence of\nsuccessive elements somehow depends on IO. But it is only with\nthe general type @Stream f m r@, or some equivalent,\nthat one can envisage (for example) the connected streaming of their\nsorts of stream - as one makes lists of lists in the Haskell\n@Prelude@ and @Data.List@. One needs some such type if we are\nto express properly streaming equivalents of e.g.\n\n> group :: Ord a => [a] -> [[a]]\n> chunksOf :: Int -> [a] -> [[a]]\n> lines :: [Char] -> [[Char]] -- but similarly with byte streams, etc.\n\nto mention a few obviously desirable operations.\n(This is explained more elaborately in the <https://hackage.haskell.org/package/streaming#readme readme> below.)\n\nOne could of course throw something\nlike the present @Stream@ type on top of a prior stream concept: this is how @pipes@ and\n@pipes-group@ (which are very much our model here) use @FreeT@.\nBut once one grasps the iterable stream concept needed to express\nthose functions then one will also see that,\nwith it, one is /already/ in possession of a complete\nelementary streaming library - since one possesses @Stream ((,) a) m r@\nor equivalently @Stream (Of a) m r@. This\nis the type of a \\'generator\\' or \\'producer\\' or \\'source\\' or whatever\nyou call an effectful stream of items.\n/The present Streaming.Prelude is thus the simplest streaming library that can replicate anything like the API of the Prelude and Data.List/.\n\nThe emphasis of the library is on interoperation; for\nthe rest its advantages are: extreme simplicity, re-use of\nintuitions the user has gathered from mastery of @Prelude@ and\n@Data.List@, and a total and systematic rejection of type synonyms.\nThe two conceptual pre-requisites are some\ncomprehension of monad transformers and some familiarity\nwith \\'rank 2 types\\'. It is hoped that experimentation with this\nsimple material, starting with the ghci examples in @Streaming.Prelude@,\nwill give people who are new to these concepts some\nintuition about their importance. The most fundamental purpose of the\nlibrary is to express elementary streaming ideas without reliance on\na complex framework, but in a way that integrates transparently with\nthe rest of Haskell, using ideas - e.g. rank 2 types, which are here\nimplicit or explicit in most mapping - that the user can carry elsewhere,\nrather than chaining her understanding to the curiosities of\na so-called streaming IO framework (as necessary as that is for certain purposes.)\n\nSee the\n<https://hackage.haskell.org/package/streaming#readme readme>\nbelow for further explanation, including the examples linked there.\nElementary usage can be divined from the ghci examples in\n@Streaming.Prelude@ and perhaps from this rough beginning of a\n<https://github.com/michaelt/streaming-tutorial/blob/master/tutorial.md tutorial>.\nNote also the\n<https://hackage.haskell.org/package/streaming-bytestring streaming bytestring>\nand\n<https://hackage.haskell.org/package/streaming-utils streaming utils>\npackages. Questions about usage can be put\nraised on StackOverflow with the tag @[haskell-streaming]@,\nor as an issue on Github, or on the\n<https://groups.google.com/forum/#!forum/haskell-pipes pipes list>\n(the package understands itself as part of the pipes \\'ecosystem\\'.)\n\nThe simplest form of interoperation with\n<http://hackage.haskell.org/package/pipes pipes>\nis accomplished with this isomorphism:\n\n> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r\n> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r\n\nInteroperation with\n<http://hackage.haskell.org/package/io-streams io-streams>\nis thus:\n\n> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()\n> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)\n\nWith\n<http://hackage.haskell.org/package/conduit conduit>\none might use, e.g.:\n\n> Conduit.unfoldM Streaming.uncons                        :: Stream (Of a) m () -> Source m a\n> \\str -> Streaming.mapM_ Conduit.yield (hoist lift str)  :: Stream (Of o) m r  -> ConduitM i o m r\n> \\src -> hoist lift str \$\$ Conduit.mapM_ Streaming.yield :: Source m a         -> Stream (Of a) m ()\n\nThese conversions should never be more expensive than a single @>->@ or @=\$=@.\nThe simplest interoperation with regular Haskell lists is provided by, say\n\n> Streaming.each                                 :: [a]               -> Stream (Of a) m ()\n> Streaming.toList_                              :: Stream (Of a) m r -> m [a]\n\nThe latter of course accumulates the whole list in memory, and is mostly what we are trying\nto avoid. Every use of @Prelude.mapM f@ should be reconceived as using the\ncomposition @Streaming.toList_ . Streaming.mapM f . Streaming.each@ with a view to\nconsidering whether the accumulation required by @Streaming.toList_@ is really necessary.\n\nHere are the results of some\n<https://gist.github.com/michaelt/96606bbf05b29bf43a05aba081dc9bd4#file-benchmachines-hs microbenchmarks>\nbased on the\n<https://github.com/ekmett/machines/blob/master/benchmarks/Benchmarks.hs benchmarks>\nincluded in the machines package:\n\n<<http://i.imgur.com/YbQtlXm.png>>\n\nBecause these are microbenchmarks for individual functions,\nthey represent a sort of \\\"worst case\\\"; many other factors can influence\nthe speed of a complex program.\n";
        buildType = "Simple";
      };
      components = {
        streaming = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.mmorph
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.ghc-prim
            hsPkgs.containers
          ];
        };
      };
    }