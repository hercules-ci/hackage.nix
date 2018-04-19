{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "regex-base";
          version = "0.90";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2006, Christopher Kuklewicz";
        maintainer = "TextRegexLazy@personal.mightyreason.com";
        author = "Christopher Kuklewicz";
        homepage = "http://sourceforge.net/projects/lazy-regex";
        url = "http://darcs.haskell.org/packages/regex-unstable/regex-base/";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "Interface API for regex-posix,pcre,parsec,tdfa,dfa";
        buildType = "Custom";
      };
      components = {
        regex-base = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }