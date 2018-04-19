{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "aeson-lens";
          version = "0.4.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012, Hideyuki Tanaka";
        maintainer = "tanaka.hideyuki@gmail.com";
        author = "Hideyuki Tanaka";
        homepage = "";
        url = "";
        synopsis = "Lens of Aeson";
        description = "Lens of Aeson";
        buildType = "Simple";
      };
      components = {
        aeson-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }