{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bdelta";
          version = "0.1";
        };
        license = "MIT";
        copyright = "Copyright (c) Joseph Adams 2011";
        maintainer = "joeyadams3.14159@gmail.com";
        author = "Joey Adams";
        homepage = "http://github.com/joeyadams/haskell-bdelta";
        url = "";
        synopsis = "Simple, fast binary diff/patch";
        description = "Compute a patch between two ByteStrings which can later be applied to the\nfirst to produce the second.  This can be used to save bandwidth and disk\nspace when many strings differing by a small number of bytes need to be\ntransmitted or stored.\n\nThe underlying implementation is written in C, and can also be found at\n<http://ccan.ozlabs.org/info/bdelta.html>.\n\nCurrently, a patch does not save any space when two strings differ by\nmore than 1000 bytes.  This arbitrary limit serves to keep applications\nfrom spiking in memory and CPU usage, as the algorithm uses quadratic\nspace and time with respect to the length of the patch.  A better\nalgorithm may be introduced in a future version of bdelta.";
        buildType = "Simple";
      };
      components = {
        bdelta = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }