{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Semantique";
          version = "0.2.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "lemmih@gmail.com";
        author = "Lemmih";
        homepage = "";
        url = "";
        synopsis = "Command-line tool for maintaining the Semantique database.";
        description = "Command-line tool for maintaining the Semantique database. See <http://semantik.tv/>";
        buildType = "Simple";
      };
      components = {
        exes = {
          semantique = {
            depends  = [
              hsPkgs.base
              hsPkgs.tagsoup
              hsPkgs.bytestring
              hsPkgs.mongoDB
              hsPkgs.process
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.split
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.classify
            ];
          };
        };
      };
    }