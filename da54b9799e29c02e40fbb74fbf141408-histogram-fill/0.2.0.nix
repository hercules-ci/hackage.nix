{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "histogram-fill";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
        author = "Alexey Khudyakov";
        homepage = "http://bitbucket.org/Shimuuar/histogram-fill/";
        url = "";
        synopsis = "Library for histograms creation.";
        description = "This is library for histograms filling. Its aim to provide\nconvenient way to create and fill histograms.\n\nThis is very much work in progress so expect API breakage in future relesases.";
        buildType = "Simple";
      };
      components = {
        histogram-fill = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
      };
    }