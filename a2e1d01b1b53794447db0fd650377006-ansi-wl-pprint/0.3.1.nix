{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      example = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ansi-wl-pprint";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "batterseapower@hotmail.com";
        author = "Daan Leijen and Max Bolingbroke";
        homepage = "http://github.com/batterseapower/ansi-wl-pprint";
        url = "";
        synopsis = "The Wadler/Leijen Pretty Printer for colored ANSI terminal output";
        description = "This is a pretty printing library based on Wadler's paper \"A Prettier Printer\". It has been enhanced with support for ANSI terminal colored output using the ansi-terminal package.";
        buildType = "Simple";
      };
      components = {
        ansi-wl-pprint = {
          depends  = [
            hsPkgs.ansi-terminal
          ] ++ [ hsPkgs.base ];
        };
        exes = {
          ansi-wl-pprint-example = {
            depends  = [
              hsPkgs.ansi-terminal
            ] ++ [ hsPkgs.base ];
          };
        };
      };
    }