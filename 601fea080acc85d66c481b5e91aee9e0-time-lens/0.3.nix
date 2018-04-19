{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "time-lens";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Roman Cheplyaka";
        homepage = "";
        url = "";
        synopsis = "Lens-based interface to Data.Time data structures";
        description = "";
        buildType = "Simple";
      };
      components = {
        time-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-lens
            hsPkgs.time
          ];
        };
      };
    }