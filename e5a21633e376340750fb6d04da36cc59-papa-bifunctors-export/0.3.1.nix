{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "papa-bifunctors-export";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2017, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
        maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
        author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
        homepage = "https://github.com/qfpl/papa";
        url = "";
        synopsis = "export useful functions from `bifunctors`.";
        description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nexport useful functions from `bifunctors`.";
        buildType = "Simple";
      };
      components = {
        papa-bifunctors-export = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
          ];
        };
      };
    }