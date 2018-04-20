{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "turni";
          version = "2011.1.10";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010 Paolo Veronelli";
        maintainer = "Paolo Veronelli <paolo.veronelli@gmail.com>";
        author = "";
        homepage = "http://wiki.github.com/paolino/turni";
        url = "";
        synopsis = "tool per la creazione dei turni commessi in un negozio di vestiti";
        description = "..";
        buildType = "Simple";
      };
      components = {
        exes = {
          settimana = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.MonadRandom
            ];
          };
        };
      };
    }