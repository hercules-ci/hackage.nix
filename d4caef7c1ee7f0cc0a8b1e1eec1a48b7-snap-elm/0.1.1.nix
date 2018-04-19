{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snap-elm";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright Kyle Carter 2013";
        maintainer = "kylcarte@gmail.com";
        author = "Kyle Carter";
        homepage = "";
        url = "";
        synopsis = "Serve Elm files through the Snap web framework.";
        description = "";
        buildType = "Simple";
      };
      components = {
        snap-elm = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.Elm
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.snap-core
            hsPkgs.process
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }