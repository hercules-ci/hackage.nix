{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hable";
          version = "0.3.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "Mekeor Melire";
        maintainer = "mekeor.melire@gmail.com";
        author = "Mekeor Melire";
        homepage = "https://hub.darcs.net/mekeor/hable";
        url = "";
        synopsis = "customizable pretty printer library for tables";
        description = "customizable pretty printer library for tables, e.g. using boxing characters";
        buildType = "Simple";
      };
      components = {
        hable = {
          depends  = [ hsPkgs.base ];
        };
      };
    }