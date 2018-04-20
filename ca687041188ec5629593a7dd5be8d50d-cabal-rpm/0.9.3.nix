{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cabal-rpm";
          version = "0.9.3";
        };
        license = "GPL-3.0-only";
        copyright = "2007-2008 Bryan O'Sullivan <bos@serpentine.com>,\n2012-2014 Jens Petersen <petersen@fedoraproject.org>";
        maintainer = "Jens Petersen <petersen@fedoraproject.org>";
        author = "Jens Petersen <juhp@community.haskell.org>, Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "https://github.com/juhp/cabal-rpm";
        url = "";
        synopsis = "RPM packaging tool for Haskell Cabal-based packages";
        description = "This package provides a RPM packaging tool for Haskell Cabal-based packages.\n\ncblrpm has commands to generate a RPM spec file and srpm for a package.\nIt can rpmbuild packages, yum install their dependencies, prep packages,\nand install them. There are commands to list package dependencies and\nmissing dependencies. The diff command compares the current spec file\nwith a freshly generated one and the update command updates the spec file\nto latest version from Hackage.";
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
              hsPkgs.time
              hsPkgs.unix
            ];
          };
        };
      };
    }