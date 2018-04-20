{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "directory-layout";
          version = "0.7.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "matvey.aksenov@gmail.com";
        author = "Matvey Aksenov";
        homepage = "";
        url = "";
        synopsis = "Directory layout DSL";
        description = "Making, fitting, printing directory layouts";
        buildType = "Simple";
      };
      components = {
        directory-layout = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.command-qq
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.free
            hsPkgs.hspec
            hsPkgs.lens
            hsPkgs.semigroups
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.command-qq
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.free
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.semigroups
              hsPkgs.template-haskell
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }