{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "th-instance-reification";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "(c) 2014, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/th-instance-reification";
        url = "";
        synopsis = "Fixed versions of instances reification functions";
        description = "Provides fixed versions of 'reifyInstances' and 'isInstance' as per\nthe following ghc issue:\n<https://ghc.haskell.org/trac/ghc/ticket/7066>.";
        buildType = "Simple";
      };
      components = {
        th-instance-reification = {
          depends  = [
            hsPkgs.containers
            hsPkgs.loch-th
            hsPkgs.placeholders
            hsPkgs.template-haskell
            hsPkgs.base
          ];
        };
        tests = {
          th-instance-reification-htf-test-suite = {
            depends  = [
              hsPkgs.quickcheck-instances
              hsPkgs.QuickCheck-GenT
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.HTF
              hsPkgs.containers
              hsPkgs.loch-th
              hsPkgs.placeholders
              hsPkgs.template-haskell
              hsPkgs.base
            ];
          };
        };
      };
    }