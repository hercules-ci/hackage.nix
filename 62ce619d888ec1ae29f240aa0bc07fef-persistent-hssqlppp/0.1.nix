{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "persistent-hssqlppp";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "portnov84@rambler.ru";
        author = "IlyaPortnov";
        homepage = "";
        url = "";
        synopsis = "Declare Persistent entities using SQL SELECT query syntax";
        description = "This package exports functions which could help to\ndeclare Persistent entities using SQL SELECT query syntax.\nSee Test.hs, TestSQL.hs for example usage.";
        buildType = "Simple";
      };
      components = {
        persistent-hssqlppp = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.persistent
            hsPkgs.persistent-template
            hsPkgs.hssqlppp
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.th-lift
            hsPkgs.monad-control
          ];
        };
      };
    }