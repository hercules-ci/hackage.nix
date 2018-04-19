{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "userid";
          version = "0.1.2.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw";
        homepage = "http://www.github.com/Happstack/userid";
        url = "";
        synopsis = "The UserId type and useful instances for web development";
        description = "Includes instances for SafeCopy, Lens, Boomerang, PathInfo and more";
        buildType = "Simple";
      };
      components = {
        userid = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.boomerang
            hsPkgs.safecopy
            hsPkgs.web-routes
            hsPkgs.web-routes-th
          ];
        };
      };
    }