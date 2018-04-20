{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "generic-xmlpickler";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015, Silk";
        maintainer = "code@silk.co";
        author = "Silk";
        homepage = "http://github.com/silkapp/generic-xmlpickler";
        url = "";
        synopsis = "Generic generation of HXT XmlPickler instances using GHC Generics.";
        description = "Generic generation of HXT XmlPickler instances using GHC Generics.";
        buildType = "Simple";
      };
      components = {
        generic-xmlpickler = {
          depends  = [
            hsPkgs.base
            hsPkgs.generic-deriving
            hsPkgs.hxt
            hsPkgs.text
          ];
        };
      };
    }