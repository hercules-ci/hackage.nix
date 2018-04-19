{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      llvm = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "regexdot";
          version = "0.12.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "(C) 2010-2015 Dr. Alistair Ward";
        maintainer = "mailto:regexdot@functionalley.eu";
        author = "Dr. Alistair Ward";
        homepage = "http://functionalley.eu/RegExDot/regExDot.html";
        url = "";
        synopsis = "A polymorphic, POSIX, extended regex-engine.";
        description = "Provides a portable, POSIX, extended regex-engine, designed to process a list of /arbitrary/ objects.";
        buildType = "Simple";
      };
      components = {
        regexdot = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.deepseq
            hsPkgs.parallel
            hsPkgs.parsec
            hsPkgs.toolshed
          ];
        };
      };
    }