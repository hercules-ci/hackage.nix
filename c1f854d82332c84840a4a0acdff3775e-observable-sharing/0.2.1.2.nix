{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "observable-sharing";
          version = "0.2.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mararon@chalmers.se";
        author = "Atze van der Ploeg <atzeus@gmail.com>,\nMarkus Aronsson <mararon@chalmers.se>";
        homepage = "https://github.com/atzeus/observable-sharing";
        url = "";
        synopsis = "Simple observable sharing";
        description = "Simple observable sharing inspired by the paper \"Observable Sharing\nfor Functional Circuit Description\".";
        buildType = "Simple";
      };
      components = {
        observable-sharing = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }