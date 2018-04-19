{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "system-filepath";
          version = "0.4.3";
        };
        license = "MIT";
        copyright = "John Millikin 2010-2011";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/hs-filepath/";
        url = "";
        synopsis = "High-level, byte-based file and directory path manipulations";
        description = "";
        buildType = "Simple";
      };
      components = {
        system-filepath = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.text
          ];
        };
      };
    }