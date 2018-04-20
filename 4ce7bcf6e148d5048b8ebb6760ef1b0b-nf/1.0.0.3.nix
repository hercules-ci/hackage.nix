{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nf";
          version = "1.0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ezyang@cs.stanford.edu";
        author = "Edward Z. Yang";
        homepage = "https://github.com/ezyang/nf";
        url = "";
        synopsis = "NF data type to statically enforce normal form";
        description = "This package provides a data type NF representing\ndata which has been evaluated to normal form.  This\nis a useful type discipline for many situations when\nnormal form data is necessary, e.g. when transmitting\ndata to other threads over channels.";
        buildType = "Simple";
      };
      components = {
        nf = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
      };
    }