{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "equational-reasoning";
          version = "0.0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "konn.jinro_at_gmail.com";
        author = "Hiromi ISHII";
        homepage = "";
        url = "";
        synopsis = "Proof assistant for Haskell using DataKinds & PolyKinds";
        description = "";
        buildType = "Simple";
      };
      components = {
        equational-reasoning = {
          depends  = [
            hsPkgs.base
            hsPkgs.singletons
            hsPkgs.tagged
            hsPkgs.void
            hsPkgs.template-haskell
          ];
        };
      };
    }