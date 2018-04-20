{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ajhc";
          version = "0.8.0.8";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Metasepi team <metasepi@gmail.com>";
        author = "John Meacham <john@repetae.net>";
        homepage = "http://ajhc.metasepi.org/";
        url = "";
        synopsis = "Haskell compiler that produce binary through C language";
        description = "Ajhc is a fork of jhc.\nThe jhc is a haskell compiler which aims to produce the most efficient\nprograms possible via whole program analysis and other optimizations.\n\nThe jhc is very minimalist in that it does not have a precompiled run time\nsystem, but rather generates what is needed as part of the compilation\nprocess. However, back ends do have specific run-time representations of\ndata, which can be affected by things like the choice of garbage collector.\n\nPerhaps you can get internal overview with following compile flow image:\n\n\n<<https://raw.github.com/ajhc/ajhc/arafura/docs/jhc_compile_flow.png>>";
        buildType = "Custom";
      };
      components = {
        ajhc = {
          depends  = [
            hsPkgs.base
            hsPkgs.HsSyck
            hsPkgs.array
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.derive
            hsPkgs.directory
            hsPkgs.fgl
            hsPkgs.filepath
            hsPkgs.haskeline
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.random
            hsPkgs.regex-compat
            hsPkgs.syb
            hsPkgs.temporary
            hsPkgs.utf8-string
            hsPkgs.zlib
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
        };
        exes = {
          ajhc = {
            depends  = [
              hsPkgs.base
              hsPkgs.HsSyck
              hsPkgs.array
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.derive
              hsPkgs.directory
              hsPkgs.fgl
              hsPkgs.filepath
              hsPkgs.haskeline
              hsPkgs.mtl
              hsPkgs.old-time
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.random
              hsPkgs.regex-compat
              hsPkgs.syb
              hsPkgs.temporary
              hsPkgs.utf8-string
              hsPkgs.zlib
              hsPkgs.ajhc
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
          };
          jahm = {
            depends  = [
              hsPkgs.base
              hsPkgs.HTTP
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.network
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.ajhc
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
      };
    }