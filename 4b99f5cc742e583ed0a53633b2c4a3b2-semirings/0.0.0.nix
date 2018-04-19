{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "semirings";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 chessai";
        maintainer = "chessai1996@gmail.com";
        author = "chessai";
        homepage = "";
        url = "";
        synopsis = "TBA";
        description = "Currently being prepared for release, reserving the namespace here.";
        buildType = "Simple";
      };
      components = {
        semirings = {};
      };
    }