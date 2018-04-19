{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "draw-poker";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "its.out.of.tune.this.my.music@gmail.com";
        author = "Tokiwo, Ousaka";
        homepage = "http://tune.hateblo.jp/entry/2015/05/12/023112";
        url = "";
        synopsis = "playing draw poker";
        description = "for http://tune.hateblo.jp/entry/2015/05/12/023112";
        buildType = "Simple";
      };
      components = {
        draw-poker = {
          depends  = [
            hsPkgs.base
            hsPkgs.random-shuffle
            hsPkgs.safe
          ];
        };
        exes = {
          draw-poker = {
            depends  = [
              hsPkgs.base
              hsPkgs.draw-poker
            ];
          };
          draw-poker-simple = {
            depends  = [
              hsPkgs.base
              hsPkgs.draw-poker
            ];
          };
        };
        tests = {
          draw-poker-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.draw-poker
            ];
          };
        };
      };
    }