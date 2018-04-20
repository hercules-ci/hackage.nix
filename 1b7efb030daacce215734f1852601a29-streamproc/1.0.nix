{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "streamproc";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "simons@cryp.to";
        author = "Shawn Garbett <shawn@garbett.org>, Peter Simons <simons@cryp.to>";
        homepage = "http://cryp.to/streamproc/";
        url = "";
        synopsis = "Stream Processer Arrow";
        description = "Stream Processer Arrow";
        buildType = "Custom";
      };
      components = {
        streamproc = {
          depends  = [ hsPkgs.base ];
        };
      };
    }