{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      static = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hyloutils";
          version = "1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "dgorin@dc.uba.ar";
        author = "Daniel Gorin";
        homepage = "";
        url = "";
        synopsis = "Very small programs for hybrid logics";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          mcheck = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.uniplate
              hsPkgs.hylolib
            ];
          };
          rewriter = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hylolib
            ];
          };
        };
      };
    }