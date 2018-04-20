{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pdfinfo";
          version = "1.5.4";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "https://github.com/chrisdone/pdfinfo";
        url = "";
        synopsis = "Wrapper around the pdfinfo command.";
        description = "Just a wrapper around the pdfinfo command (for collecting PDF file info). See man pdfinfo.";
        buildType = "Simple";
      };
      components = {
        pdfinfo = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.time-locale-compat
            hsPkgs.process-extras
            hsPkgs.text
            hsPkgs.mtl
          ];
        };
      };
    }