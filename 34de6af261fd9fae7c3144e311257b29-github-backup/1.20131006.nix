{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "github-backup";
          version = "1.20131006";
        };
        license = "LicenseRef-GPL";
        copyright = "2012 Joey Hess";
        maintainer = "Joey Hess <joey@kitenet.net>";
        author = "Joey Hess";
        homepage = "https://github.com/joeyh/github-backup";
        url = "";
        synopsis = "backs up everything github knows about a repository, to the repository";
        description = "github-backup is a simple tool you run in a git repository you cloned from\nGithub. It backs up everything Github knows about the repository, including\nother forks, issues, comments, milestones, pull requests, and watchers.";
        buildType = "Custom";
      };
      components = {
        exes = {
          github-backup = {
            depends  = [
              hsPkgs.MissingH
              hsPkgs.hslogger
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.extensible-exceptions
              hsPkgs.unix-compat
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.base
              hsPkgs.IfElse
              hsPkgs.pretty-show
              hsPkgs.text
              hsPkgs.process
              hsPkgs.github
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
      };
    }