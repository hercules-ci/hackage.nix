{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "skews";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Yuji Yamamoto";
      maintainer = "yuji-yamamoto@iij.ad.jp";
      author = "Yuji Yamamoto";
      homepage = "https://github.com/iij-ii/skews#readme";
      url = "";
      synopsis = "A very quick-and-dirty WebSocket server.";
      description = "A very quick-and-dirty WebSocket server. Intended for use with unit tests.";
      buildType = "Simple";
    };
    components = {
      "skews" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deque)
          (hsPkgs.websockets)
        ];
      };
      tests = {
        "mock-ws-server-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.skews)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.deque)
            (hsPkgs.envy)
            (hsPkgs.hspec)
            (hsPkgs.network)
            (hsPkgs.websockets)
          ];
        };
      };
    };
  }