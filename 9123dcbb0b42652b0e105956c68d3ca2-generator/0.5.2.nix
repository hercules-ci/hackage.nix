{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "generator";
          version = "0.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yairchu@gmail.com";
        author = "Yair Chuchem";
        homepage = "http://github.com/yairchu/generator/tree";
        url = "";
        synopsis = "Python-generators notation for creation of monadic lists";
        description = "Consumer and Generator monad transformers to create\nand iterate 'ListT's in a manner similar to\nPython generators.";
        buildType = "Simple";
      };
      components = {
        generator = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.MaybeT
            hsPkgs.List
          ];
        };
      };
    }