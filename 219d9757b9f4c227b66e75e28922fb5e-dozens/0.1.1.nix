{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dozens";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "(c) 2015 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/dozens-hs";
        url = "";
        synopsis = "dozens api library";
        description = "dozens(<https://dozens.jp/>) api library\n\nexamples: <https://github.com/philopon/dozens-hs/blob/master/examples/>";
        buildType = "Simple";
      };
      components = {
        dozens = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.data-default-class
            hsPkgs.scientific
            hsPkgs.reflection
          ];
        };
      };
    }