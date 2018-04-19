{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "disassembler";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Martin Grabmueller <martin@grabmueller.de>";
        author = "Martin Grabmueller <martin@grabmueller.de>, Dirk Kleeblatt <klee@cs.tu-berlin.de>";
        homepage = "";
        url = "";
        synopsis = "Disassembler for X86 & AMD64 machine code";
        description = "Disassembler for X86 & AMD64 machine code";
        buildType = "Simple";
      };
      components = {
        disassembler = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.mtl
            hsPkgs.parsec
          ];
        };
      };
    }