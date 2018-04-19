{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "eternal";
          version = "0.1.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mikhail Pukhlikov <cynede@gentoo.org>";
        author = "Mikhail Pukhlikov";
        homepage = "";
        url = "";
        synopsis = "everything breaking the Fairbairn threshold";
        description = "Everything breaking the Fairbairn threshold\nbut in the same time usable in other projects";
        buildType = "Custom";
      };
      components = {
        eternal = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.utf8-string
            hsPkgs.base-unicode-symbols
          ];
        };
      };
    }