{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "haskelldb-hsql-sqlite";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "The authors";
        maintainer = "haskelldb-users@lists.sourceforge.net";
        author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
        homepage = "https://github.com/m4dc4p/haskelldb";
        url = "";
        synopsis = "HaskellDB support for the HSQL SQLite driver.";
        description = "";
        buildType = "Simple";
      };
      components = {
        haskelldb-hsql-sqlite = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.haskelldb
            hsPkgs.haskelldb-hsql
            hsPkgs.hsql
            hsPkgs.hsql-sqlite
          ];
        };
        exes = {
          DBDirect-hsql-sqlite = {};
        };
      };
    }