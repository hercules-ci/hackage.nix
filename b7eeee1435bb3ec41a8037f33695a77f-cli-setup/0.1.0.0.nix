{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "cli-setup";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/cli-setup#readme";
        url = "";
        synopsis = "Helper setup scripts for packaging command-line tools.";
        description = "Provides functions to set up manpages and shell completions. Intended to be used in the @Setup.hs@ module.";
        buildType = "Simple";
      };
      components = {
        cli-setup = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.process
          ];
        };
      };
    }