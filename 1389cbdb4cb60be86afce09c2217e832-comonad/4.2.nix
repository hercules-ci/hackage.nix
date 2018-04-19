{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-doctests = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "comonad";
          version = "4.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2013 Edward A. Kmett,\nCopyright (C) 2004-2008 Dave Menendez";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/comonad/";
        url = "";
        synopsis = "Comonads";
        description = "Comonads";
        buildType = "Custom";
      };
      components = {
        comonad = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.distributive
            hsPkgs.semigroups
            hsPkgs.tagged
            hsPkgs.transformers
          ];
        };
        tests = {
          doctests = {
            depends  = optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }