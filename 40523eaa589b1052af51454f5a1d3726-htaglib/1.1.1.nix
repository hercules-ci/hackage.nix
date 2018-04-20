{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "htaglib";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mrkkrp/htaglib";
        url = "";
        synopsis = "Bindings to TagLib, audio meta-data library";
        description = "Bindings to TagLib, audio meta-data library.";
        buildType = "Simple";
      };
      components = {
        htaglib = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.transformers
          ];
          libs = [ pkgs.tag_c ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.htaglib
            ];
          };
        };
      };
    }