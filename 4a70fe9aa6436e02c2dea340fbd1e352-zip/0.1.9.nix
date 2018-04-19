{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zip";
          version = "0.1.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov@opmbx.org>";
        author = "Mark Karpov <markkarpov@opmbx.org>";
        homepage = "https://github.com/mrkkrp/zip";
        url = "";
        synopsis = "Operations on zip archives";
        description = "Operations on zip archives.";
        buildType = "Simple";
      };
      components = {
        zip = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bzlib-conduit
            hsPkgs.case-insensitive
            hsPkgs.cereal
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.digest
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.path
            hsPkgs.path-io
            hsPkgs.plan-b
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.exceptions
              hsPkgs.filepath
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.path
              hsPkgs.path-io
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.zip
            ];
          };
        };
      };
    }