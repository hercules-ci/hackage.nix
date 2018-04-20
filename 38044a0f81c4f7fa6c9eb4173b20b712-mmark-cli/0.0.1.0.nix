{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "mmark-cli";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mmark-md/mmark-cli";
        url = "";
        synopsis = "Description";
        description = "Description.";
        buildType = "Simple";
      };
      components = {
        exes = {
          mmark = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.gitrev
              hsPkgs.lucid
              hsPkgs.megaparsec
              hsPkgs.mmark
              hsPkgs.mmark-ext
              hsPkgs.optparse-applicative
              hsPkgs.skylighting
              hsPkgs.stache
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }