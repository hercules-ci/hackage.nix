{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "data-accessor-mtl";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Record_access";
        url = "http://code.haskell.org/data-accessor/";
        synopsis = "Use Accessor to access state in mtl State monad class";
        description = "Use Accessor to access state in mtl State monad class";
        buildType = "Simple";
      };
      components = {
        data-accessor-mtl = {
          depends  = [
            hsPkgs.data-accessor
            hsPkgs.mtl
            hsPkgs.base
          ];
        };
      };
    }