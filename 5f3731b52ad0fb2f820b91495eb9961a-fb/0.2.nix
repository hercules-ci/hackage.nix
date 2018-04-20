{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fb";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
        author = "Felipe Lessa";
        homepage = "https://github.com/meteficha/facebook";
        url = "";
        synopsis = "Bindings to Facebook's API.";
        description = "This package exports bindings to Facebook's APIs (see\n<http://developers.facebook.com/>).  Does not have any external\ndependencies and tries to use as little resources (such as\nmemory, sockets and CPU) as possible by using packages such as\n@aeson@, @attoparsec@, @bytestring@, @conduit@, @http-conduit@,\n@text@ and others.\n\nWhile we would like to have a complete binding to Facebook's\nAPI, this package is being developed on demand.  If you need\nsomething that has not been implemented yet, please send a pull\nrequest or file an issue on GitHub\n(<https://github.com/meteficha/fb/issues>).";
        buildType = "Simple";
      };
      components = {
        fb = {
          depends  = [
            hsPkgs.base
            hsPkgs.lifted-base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.conduit
            hsPkgs.http-types
            hsPkgs.http-conduit
            hsPkgs.attoparsec
            hsPkgs.attoparsec-conduit
            hsPkgs.aeson
            hsPkgs.time
          ];
        };
        tests = {
          runtests = {
            depends  = [
              hsPkgs.base
              hsPkgs.lifted-base
              hsPkgs.transformers
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.http-conduit
              hsPkgs.time
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.fb
            ];
          };
        };
      };
    }