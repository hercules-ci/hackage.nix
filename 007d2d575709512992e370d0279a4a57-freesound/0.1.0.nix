{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "freesound";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Stefan Kersten 2008-2010";
        maintainer = "Stefan Kersten";
        author = "Stefan Kersten";
        homepage = "http://code.haskell.org/~StefanKersten/code/freesound";
        url = "";
        synopsis = "Access the Freesound Project database";
        description = "Access the Freesound Project database. The Freesound\nProject is a collaborative database of Creative Commons\nlicensed sounds.\n\n<http://www.freesound.org/>\n\n<http://www.creativecommons.org/>";
        buildType = "Simple";
      };
      components = {
        freesound = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.curl
            hsPkgs.data-accessor
            hsPkgs.data-accessor-template
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.xml
          ];
        };
        exes = { freesound = {}; };
      };
    }