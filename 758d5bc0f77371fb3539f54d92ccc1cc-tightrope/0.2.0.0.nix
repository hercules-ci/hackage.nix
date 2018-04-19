{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tightrope";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ianthehenry@gmail.com";
        author = "Ian Henry";
        homepage = "";
        url = "";
        synopsis = "Nice API for a Slackbot";
        description = "Making bots for Slack is hard! But wait: now it's easy.";
        buildType = "Simple";
      };
      components = {
        tightrope = {
          depends  = [
            hsPkgs.wai-extra
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.wreq
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.http-types
          ];
        };
      };
    }