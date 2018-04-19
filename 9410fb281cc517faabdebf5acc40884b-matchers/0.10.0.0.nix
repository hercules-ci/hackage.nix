{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "matchers";
          version = "0.10.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012-2013 Omari Norman.";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/matchers";
        url = "";
        synopsis = "Text matchers";
        description = "Helpers for performing text matches.";
        buildType = "Simple";
      };
      components = {
        matchers = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.parsec
            hsPkgs.pcre-light
            hsPkgs.text
            hsPkgs.time
          ];
        };
      };
    }