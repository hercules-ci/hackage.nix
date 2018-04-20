{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "papa-base";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
        maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
        author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
        homepage = "https://github.com/qfpl/papa";
        url = "";
        synopsis = "Prelude with only useful functions";
        description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nPrelude with only useful functions";
        buildType = "Simple";
      };
      components = {
        papa-base = {
          depends  = [
            hsPkgs.base
            hsPkgs.papa-base-export
            hsPkgs.papa-base-implement
          ];
        };
      };
    }