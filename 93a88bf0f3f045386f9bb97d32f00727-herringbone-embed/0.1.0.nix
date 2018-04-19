{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "herringbone-embed";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "harry@garrood.me";
        author = "Harry Garrood";
        homepage = "";
        url = "";
        synopsis = "Embed preprocessed web assets in your executable with Template Haskell.";
        description = "Embed preprocessed web assets in your executable with Template Haskell.";
        buildType = "Simple";
      };
      components = {
        herringbone-embed = {
          depends  = [
            hsPkgs.base
            hsPkgs.herringbone
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.file-embed
            hsPkgs.template-haskell
          ];
        };
      };
    }