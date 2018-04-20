{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi-language";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "yi-devel@googlegroups.com";
        author = "Mateusz Kowalczyk";
        homepage = "https://github.com/yi-editor/yi-lexers";
        url = "";
        synopsis = "Collection of language-related Yi libraries.";
        description = "Collection of language-related Yi libraries: lexers, scanners…";
        buildType = "Simple";
      };
      components = {
        yi-language = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.binary
            hsPkgs.data-default
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.oo-prototypes
            hsPkgs.pointedlist
            hsPkgs.regex-base
            hsPkgs.regex-tdfa
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
          ];
        };
      };
    }