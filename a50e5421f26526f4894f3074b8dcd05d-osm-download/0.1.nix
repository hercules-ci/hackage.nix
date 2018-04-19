{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "osm-download";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas.DuBuisson@gmail.com";
        author = "Rob Stewart, Thomas M. DuBuisson";
        homepage = "";
        url = "";
        synopsis = "Download Open Street Map tiles";
        description = "";
        buildType = "Simple";
      };
      components = {
        osm-download = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-conduit
            hsPkgs.bytestring
            hsPkgs.gps
          ];
        };
      };
    }