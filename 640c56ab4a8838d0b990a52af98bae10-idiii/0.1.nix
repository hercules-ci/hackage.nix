{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "idiii";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "christopher.t.wagner@gmail.com";
        author = "laughedelic";
        homepage = "";
        url = "";
        synopsis = "Reading and writing of ID3v2 tags";
        description = "Reading and writing of ID3v2 tags";
        buildType = "Simple";
      };
      components = {
        idiii = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.bytestring
            hsPkgs.polyparse
            hsPkgs.text
            hsPkgs.data-accessor
            hsPkgs.utf8-string
            hsPkgs.containers
            hsPkgs.MissingH
          ];
        };
      };
    }