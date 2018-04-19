{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghci-ng";
          version = "10.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2005 The University of Glasgow, 2008 Claus Reinke, 2012 Kazu Yamamoto, 2014 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "The GHC Team, Chris Done";
        homepage = "https://github.com/chrisdone/ghci-ng";
        url = "";
        synopsis = "Next generation GHCi";
        description = "GHCi plus extra goodies. See <https://github.com/chrisdone/ghci-ng#features README> for feature list.\n\nNOTE: The feature-set of @ghci-ng-10.0.0@ has been merged back upstream and is therefore available in GHCi 8.0 proper!";
        buildType = "Simple";
      };
      components = {
        exes = {
          ghci-ng = {
            depends  = (pkgs.lib.optional compiler.isGhc hsPkgs.ghc ++ optionals compiler.isGhc [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.haskeline
              hsPkgs.process
              hsPkgs.transformers
              hsPkgs.syb
              hsPkgs.containers
              hsPkgs.time
            ]) ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
          };
        };
      };
    }