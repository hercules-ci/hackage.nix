{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cabal-rpm";
          version = "0.8.7";
        };
        license = "GPL-3.0-only";
        copyright = "2007-2008 Bryan O'Sullivan <bos@serpentine.com>,\n2012-2013 Jens Petersen <petersen@fedoraproject.org>";
        maintainer = "Jens Petersen <petersen@fedoraproject.org>";
        author = "Bryan O'Sullivan <bos@serpentine.com>, Jens Petersen <juhp@community.haskell.org>";
        homepage = "https://github.com/juhp/cabal-rpm";
        url = "";
        synopsis = "RPM package creator for Haskell Cabal-based packages";
        description = "This package generates RPM packages from Haskell Cabal packages.\n\nSee <https://github.com/juhp/cabal-rpm/blob/master/ChangeLog> for history details.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cblrpm = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.old-locale
              hsPkgs.process
              hsPkgs.regex-compat
              hsPkgs.time
              hsPkgs.unix
            ];
          };
        };
      };
    }