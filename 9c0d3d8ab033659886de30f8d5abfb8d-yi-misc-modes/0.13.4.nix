{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi-misc-modes";
          version = "0.13.4";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Yi developers <yi-devel@googlegroups.com>";
        author = "";
        homepage = "https://github.com/yi-editor/yi#readme";
        url = "";
        synopsis = "Yi editor miscellaneous modes";
        description = "";
        buildType = "Simple";
      };
      components = {
        yi-misc-modes = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.data-default
            hsPkgs.filepath
            hsPkgs.microlens-platform
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.yi-core
            hsPkgs.yi-language
            hsPkgs.yi-rope
          ];
        };
      };
    }