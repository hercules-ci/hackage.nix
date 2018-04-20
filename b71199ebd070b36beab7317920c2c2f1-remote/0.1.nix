{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "remote";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jeff Epstein <jee36@cam.ac.uk>";
        author = "Jeff Epstein <jee36@cam.ac.uk>";
        homepage = "";
        url = "";
        synopsis = "Cloud Haskell";
        description = "Fault-tolerant distributed computing framework";
        buildType = "Simple";
      };
      components = {
        remote = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.network
            hsPkgs.syb
            hsPkgs.mtl
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.template-haskell
            hsPkgs.stm
            hsPkgs.pureMD5
            hsPkgs.utf8-string
            hsPkgs.directory
          ];
        };
      };
    }