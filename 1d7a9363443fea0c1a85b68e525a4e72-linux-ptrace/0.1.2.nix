{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "linux-ptrace";
          version = "0.1.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "zygoloid@metafoo.co.uk";
        author = "Richard Smith";
        homepage = "";
        url = "";
        synopsis = "Wrapping of Linux' ptrace(2).";
        description = "An interface for using ptrace to inspect the state of other processes, under Linux.";
        buildType = "Simple";
      };
      components = {
        linux-ptrace = {
          depends  = [
            hsPkgs.base
            hsPkgs.posix-waitpid
            hsPkgs.unix
            hsPkgs.bytestring
            hsPkgs.process
            hsPkgs.template-haskell
            hsPkgs.mmap
          ];
        };
      };
    }