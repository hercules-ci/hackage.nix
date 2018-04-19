{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "verilog";
          version = "0.0.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
        author = "Tom Hawkins <tomahawkins@gmail.com>";
        homepage = "http://github.com/tomahawkins/verilog";
        url = "";
        synopsis = "Verilog parser and DSL.";
        description = "A parser and DSL supporting a small subset of Verilog-95.\nIntended for machine generated, synthesizable code.";
        buildType = "Simple";
      };
      components = {
        verilog = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.monadLib
          ];
        };
        exes = {
          verilog-gt = {
            depends  = [
              hsPkgs.base
              hsPkgs.verilog
            ];
          };
        };
      };
    }