{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "basement";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2017 Vincent Hanquez <vincent@snarc.org>\n2017      Foundation Maintainers";
        maintainer = "vincent@snarc.org";
        author = "";
        homepage = "https://github.com/haskell-foundation/foundation#readme";
        url = "";
        synopsis = "Foundation scrap box of array & string";
        description = "Foundation most basic primitives without any dependencies";
        buildType = "Simple";
      };
      components = {
        basement = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }