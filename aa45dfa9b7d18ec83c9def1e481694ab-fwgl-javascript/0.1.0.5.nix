{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fwgl-javascript";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ziocroc@gmail.com";
        author = "Luca \"ziocroc\" Prezzavento";
        homepage = "https://github.com/ziocroc/FWGL";
        url = "";
        synopsis = "FWGL GHCJS backend";
        description = "FWGL GHCJS backend";
        buildType = "Simple";
      };
      components = {
        fwgl-javascript = {
          depends  = [
            hsPkgs.fwgl
            hsPkgs.Yampa
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.ghcjs-base
          ];
        };
      };
    }