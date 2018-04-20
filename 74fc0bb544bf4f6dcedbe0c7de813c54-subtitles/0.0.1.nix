{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "subtitles";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sfvisser@cs.uu.nl";
        author = "Sebastiaan Visser";
        homepage = "";
        url = "";
        synopsis = "Modify SRT subtitle files.";
        description = "Simple program to cut, select prefix/suffix of, reindex and shift SRT subtitle files.";
        buildType = "Simple";
      };
      components = {
        exes = {
          subtitles = {
            depends  = [
              hsPkgs.base
              hsPkgs.split
            ];
          };
        };
      };
    }