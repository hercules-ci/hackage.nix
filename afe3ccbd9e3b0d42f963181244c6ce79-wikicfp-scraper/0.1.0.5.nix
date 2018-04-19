{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wikicfp-scraper";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Toshio Ito <debug.ito@gmail.com>";
        author = "Toshio Ito <debug.ito@gmail.com>";
        homepage = "https://github.com/debug-ito/wikicfp-scraper";
        url = "";
        synopsis = "Scrape WikiCFP web site";
        description = "Scrape WikiCFP web site. See 'Web.WikiCFP.Scraper'.";
        buildType = "Simple";
      };
      components = {
        wikicfp-scraper = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.scalpel
            hsPkgs.time
            hsPkgs.attoparsec
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.wikicfp-scraper
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.hspec
              hsPkgs.filepath
            ];
          };
        };
      };
    }