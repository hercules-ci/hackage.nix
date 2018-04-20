{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "shell-escape";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "oss@solidsnack.be";
        author = "Jason Dusek";
        homepage = "http://github.com/solidsnack/shell-escape";
        url = "";
        synopsis = "Shell escaping library.";
        description = "Shell escaping library, offering both Bourne shell and Bash style escaping\nof ByteStrings.";
        buildType = "Simple";
      };
      components = {
        shell-escape = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.bytestring
          ];
        };
      };
    }