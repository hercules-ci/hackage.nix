{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      portable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "shake";
          version = "0.16.1";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2011-2018";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "http://shakebuild.com";
        url = "";
        synopsis = "Build system library, like Make, but more accurate dependencies.";
        description = "Shake is a Haskell library for writing build systems - designed as a\nreplacement for @make@. See \"Development.Shake\" for an introduction,\nincluding an example. Further examples are included in the Cabal tarball,\nunder the @Examples@ directory. The homepage contains links to a user\nmanual, an academic paper and further information:\n<http://shakebuild.com>\n\nTo use Shake the user writes a Haskell program\nthat imports \"Development.Shake\", defines some build rules, and calls\nthe 'Development.Shake.shakeArgs' function. Thanks to do notation and infix\noperators, a simple Shake build system\nis not too dissimilar from a simple Makefile. However, as build systems\nget more complex, Shake is able to take advantage of the excellent\nabstraction facilities offered by Haskell and easily support much larger\nprojects. The Shake library provides all the standard features available in other\nbuild systems, including automatic parallelism and minimal rebuilds.\nShake also provides more accurate dependency tracking, including seamless\nsupport for generated files, and dependencies on system information\n(e.g. compiler version).";
        buildType = "Simple";
      };
      components = {
        shake = {
          depends  = (([
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.extra
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.js-flot
            hsPkgs.js-jquery
            hsPkgs.primitive
            hsPkgs.process
            hsPkgs.random
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.utf8-string
          ] ++ (if _flags.portable
            then pkgs.lib.optional compiler.isGhc hsPkgs.old-time
            else pkgs.lib.optional (!system.isWindows) hsPkgs.unix)) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups;
        };
        exes = {
          shake = {
            depends  = (([
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.extra
              hsPkgs.filepath
              hsPkgs.hashable
              hsPkgs.js-flot
              hsPkgs.js-jquery
              hsPkgs.primitive
              hsPkgs.process
              hsPkgs.random
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.utf8-string
            ] ++ (if _flags.portable
              then pkgs.lib.optional compiler.isGhc hsPkgs.old-time
              else pkgs.lib.optional (!system.isWindows) hsPkgs.unix)) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups;
          };
        };
        tests = {
          shake-test = {
            depends  = (([
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.extra
              hsPkgs.filepath
              hsPkgs.hashable
              hsPkgs.js-flot
              hsPkgs.js-jquery
              hsPkgs.primitive
              hsPkgs.process
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.utf8-string
            ] ++ (if _flags.portable
              then pkgs.lib.optional compiler.isGhc hsPkgs.old-time
              else pkgs.lib.optional (!system.isWindows) hsPkgs.unix)) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups;
          };
        };
      };
    }