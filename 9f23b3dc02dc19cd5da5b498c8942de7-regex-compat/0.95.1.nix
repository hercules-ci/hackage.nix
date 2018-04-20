{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      newbase = true;
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "regex-compat";
          version = "0.95.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2006, Christopher Kuklewicz";
        maintainer = "TextRegexLazy@personal.mightyreason.com";
        author = "Christopher Kuklewicz";
        homepage = "http://sourceforge.net/projects/lazy-regex";
        url = "http://darcs.haskell.org/packages/regex-unstable/regex-compat/";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "One module layer over regex-posix to replace Text.Regex";
        buildType = "Simple";
      };
      components = {
        regex-compat = {
          depends  = if _flags.newbase
            then [
              hsPkgs.base
              hsPkgs.regex-base
              hsPkgs.regex-posix
              hsPkgs.array
            ]
            else if _flags.splitbase
              then [
                hsPkgs.base
                hsPkgs.regex-base
                hsPkgs.regex-posix
                hsPkgs.array
              ]
              else [
                hsPkgs.base
                hsPkgs.regex-base
                hsPkgs.regex-posix
              ];
        };
      };
    }