{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "relational-schemas";
          version = "0.1.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013-2017 Kei Hibino, Shohei Murayama, Shohei Yasutake, Sho KURODA";
        maintainer = "ex8k.hibino@gmail.com, shohei.murayama@gmail.com, amutake.s@gmail.com, krdlab@gmail.com";
        author = "Kei Hibino, Shohei Murayama, Shohei Yasutake, Sho KURODA";
        homepage = "http://khibino.github.io/haskell-relational-record/";
        url = "";
        synopsis = "RDBMSs' schema templates for relational-query";
        description = "This package contains some RDBMSs' schema structure definitions.\nSupported RDBMS schemas are below:\n- IBM DB2\n- PostgreSQL\n- Microsoft SQLServer\n- SQLite3\n- Oracle\n- MySQL";
        buildType = "Simple";
      };
      components = {
        relational-schemas = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.relational-query
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }