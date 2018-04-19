{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hgrev";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "luke@hoersten.org";
        author = "Luke Hoersten";
        homepage = "https://github.com/LukeHoersten/hgrev";
        url = "";
        synopsis = "Template Haskell splices for including the current Mercurial revision info in code.";
        description = "";
        buildType = "Simple";
      };
      components = {
        hgrev = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.template-haskell
          ];
        };
      };
    }