{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "regex-base";
          version = "0.71";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2006, Christopher Kuklewicz";
        maintainer = "TextRegexLazy@personal.mightyreason.com";
        author = "Christopher Kuklewicz";
        homepage = "http://sourceforge.net/projects/lazy-regex";
        url = "";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "Interface API for regex-posix,pcre,parsec,dfa";
        buildType = "Custom";
      };
      components = {
        regex-base = {
          depends  = [ hsPkgs.base ];
        };
      };
    }