{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Nomyx-Language";
          version = "0.7.4";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Corentin Dupont";
        maintainer = "Corentin Dupont";
        author = "Corentin Dupont";
        homepage = "http://www.nomyx.net";
        url = "";
        synopsis = "Language to express rules for Nomic";
        description = "Provide a DSL to express rules in a Nomic game. See package Nomyx for a full game implementation.";
        buildType = "Simple";
      };
      components = {
        Nomyx-Language = {
          depends  = [
            hsPkgs.DebugTraceHelpers
            hsPkgs.Boolean
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-lens
            hsPkgs.data-lens-template
            hsPkgs.data-lens-fd
            hsPkgs.ghc
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.random
            hsPkgs.safe
            hsPkgs.time
            hsPkgs.time-recurrence
          ];
        };
      };
    }