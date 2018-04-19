{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "html-minimalist";
          version = "0.15";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2006-2014";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/t/html-minimalist";
        url = "";
        synopsis = "Minimalist haskell html library";
        description = "Text.HTML.Light is a very simple Haskell module\nfor writing [x]html documents.  It provides\nconstructors for html elements and attributes\nin terms of Text.XML.Light.";
        buildType = "Simple";
      };
      components = {
        html-minimalist = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml
          ];
        };
      };
    }