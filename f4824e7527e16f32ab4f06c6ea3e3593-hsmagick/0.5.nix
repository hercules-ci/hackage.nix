{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "hsmagick";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Tim Chevalier, 2008";
        maintainer = "Vincent Gerard, vincent@xenbox.fr";
        author = "Tim Chevalier";
        homepage = "https://github.com/vincentg/hsmagick";
        url = "";
        synopsis = "FFI bindings for the GraphicsMagick library";
        description = "FFI bindings for the GraphicsMagick library";
        buildType = "Simple";
      };
      components = {
        hsmagick = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.bytestring
          ];
          libs = [
            pkgs.tiff
            pkgs.jasper
            pkgs.jpeg
            pkgs.png
            pkgs.wmflite
            pkgs.bz2
            pkgs.z
            pkgs.m
          ];
        };
      };
    }