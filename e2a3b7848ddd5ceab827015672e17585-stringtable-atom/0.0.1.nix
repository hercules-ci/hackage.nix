{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "stringtable-atom";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "John Meacham, 2008";
        maintainer = "audreyt@audreyt.org";
        author = "John Meacham";
        homepage = "";
        url = "";
        synopsis = "Maps strings to Atoms for fast equality and ordering comparison";
        description = "Maps strings to Atoms for fast equality and ordering comparison";
        buildType = "Simple";
      };
      components = {
        stringtable-atom = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
          ];
        };
      };
    }