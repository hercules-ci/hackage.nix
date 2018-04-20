{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ListTree";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yairchu@gmail.com";
        author = "Yair Chuchem";
        homepage = "http://github.com/yairchu/generator/tree";
        url = "";
        synopsis = "Combinatoric search using ListT";
        description = "Searching and pruning\ntrees expressed as 'List's whose underlying monad\nis also a List.";
        buildType = "Simple";
      };
      components = {
        ListTree = {
          depends  = [
            hsPkgs.base
            hsPkgs.List
            hsPkgs.mtl
          ];
        };
      };
    }