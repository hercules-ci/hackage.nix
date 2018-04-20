{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aws-sdk-xml-unordered";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Shohei Yasutake <amutake.s@gmail.com>";
        author = "Shohei Yasutake <amutake.s@gmail.com>";
        homepage = "https://github.com/worksap-ate/aws-sdk-xml-unordered";
        url = "";
        synopsis = "The xml parser for aws-sdk package";
        description = "This package provides the unordered xml parser for aws-sdk package.";
        buildType = "Simple";
      };
      components = {
        aws-sdk-xml-unordered = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.conduit
            hsPkgs.xml-conduit
            hsPkgs.xml-types
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.lifted-base
            hsPkgs.aws-sdk-text-converter
            hsPkgs.resourcet
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.conduit
              hsPkgs.xml-conduit
              hsPkgs.aws-sdk-xml-unordered
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.resourcet
            ];
          };
        };
      };
    }