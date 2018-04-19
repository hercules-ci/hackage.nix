{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HPi";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013-2015 Wander Hillen";
        maintainer = "wjw.hillen@gmail.com";
        author = "Wander Hillen";
        homepage = "https://github.com/WJWH/HPi";
        url = "";
        synopsis = "GPIO, I2C and SPI functions for the Raspberry Pi.";
        description = "This package is a FFI wrapper around the bcm2835 library by Mike McCauley, it also includes a few utility functions for easier use of the imported functions.";
        buildType = "Simple";
      };
      components = {
        HPi = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = [ pkgs.bcm2835 ];
        };
      };
    }