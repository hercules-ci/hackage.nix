{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "Unixutils";
          version = "1.44";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw, David Fox";
        homepage = "http://src.seereason.com/haskell-unixutils";
        url = "";
        synopsis = "A crude interface between Haskell and Unix-like operating systems";
        description = "A collection of useful and mildly useful functions that you might\nexpect to find in System.* which a heavy bias towards Unix-type operating systems.";
        buildType = "Simple";
      };
      components = {
        Unixutils = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.HUnit
            hsPkgs.unix
            hsPkgs.regex-tdfa
            hsPkgs.process
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.time
            hsPkgs.old-time
            hsPkgs.parallel
            hsPkgs.filepath
            hsPkgs.pureMD5
            hsPkgs.zlib
          ];
          libs = [ pkgs.crypt ];
        };
      };
    }