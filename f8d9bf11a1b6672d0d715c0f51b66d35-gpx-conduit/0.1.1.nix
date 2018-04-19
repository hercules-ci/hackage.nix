{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gpx-conduit";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Thomas M. DuBuisson (2012)";
        maintainer = "Thomas.DuBuisson@gmail.com";
        author = "Thomas M. DuBuisson";
        homepage = "";
        url = "";
        synopsis = "Read GPX files using conduits";
        description = "Read GPX files into simple Point types.";
        buildType = "Simple";
      };
      components = {
        gpx-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml-conduit
            hsPkgs.conduit
            hsPkgs.attoparsec
            hsPkgs.time
            hsPkgs.text
            hsPkgs.xml-types
            hsPkgs.old-locale
            hsPkgs.filepath
            hsPkgs.monad-control
            hsPkgs.void
          ];
        };
      };
    }