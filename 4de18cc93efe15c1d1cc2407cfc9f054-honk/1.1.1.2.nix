{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "honk";
          version = "1.1.1.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "lambda.fairy@gmail.com";
        author = "Chris Wong";
        homepage = "https://lfairy.github.com/honk";
        url = "";
        synopsis = "Cross-platform interface to the PC speaker.";
        description = "A unified, cross-platform interface to the PC speaker.\n\nBeep to your heart's content!";
        buildType = "Simple";
      };
      components = {
        honk = {
          depends  = [ hsPkgs.base ];
        };
      };
    }