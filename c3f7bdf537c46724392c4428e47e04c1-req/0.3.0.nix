{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "req";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mrkkrp/req";
        url = "";
        synopsis = "Easy-to-use, type-safe, expandable, high-level HTTP library";
        description = "Easy-to-use, type-safe, expandable, high-level HTTP library.";
        buildType = "Simple";
      };
      components = {
        req = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.authenticate-oauth
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.connection
            hsPkgs.data-default-class
            hsPkgs.http-api-data
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.retry
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          pure-tests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.data-default-class
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.req
              hsPkgs.text
              hsPkgs.time
            ];
          };
          httpbin-tests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.data-default-class
              hsPkgs.hspec
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.req
              hsPkgs.retry
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }