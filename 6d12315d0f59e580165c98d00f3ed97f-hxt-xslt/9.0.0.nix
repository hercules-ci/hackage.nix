{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hxt-xslt";
          version = "9.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2005-2010 Uwe Schmidt";
        maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
        author = "Tim Walkenhorst";
        homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
        url = "";
        synopsis = "The XSLT modules for HXT.";
        description = "The Haskell XML Toolbox XSLT library.";
        buildType = "Simple";
      };
      components = {
        hxt-xslt = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.hxt
            hsPkgs.hxt-xpath
          ];
        };
      };
    }