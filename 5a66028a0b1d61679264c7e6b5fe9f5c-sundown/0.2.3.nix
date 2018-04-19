{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "sundown";
          version = "0.2.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Francesco Mazzoli (f@mazzo.li)";
        author = "Francesco Mazzoli (f@mazzo.li)";
        homepage = "";
        url = "";
        synopsis = "Bindings to the sundown markdown library";
        description = "Bindings to the github fork of sundown, a nice C markdown library:\n<https://github.com/tanoku/sundown>";
        buildType = "Simple";
      };
      components = {
        sundown = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }