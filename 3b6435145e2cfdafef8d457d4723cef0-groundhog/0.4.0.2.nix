{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "groundhog";
          version = "0.4.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Boris Lykah <lykahb@gmail.com>";
        author = "Boris Lykah <lykahb@gmail.com>";
        homepage = "http://github.com/lykahb/groundhog";
        url = "";
        synopsis = "Type-safe datatype-database mapping library.";
        description = "This library maps your datatypes to a relational model, in a way similar to what ORM libraries do in OOP. The schema can be configured flexibly which makes integration with existing databases easy. Groundhog supports schema migrations, composite keys, advanced expressions in queries, and much more. See examples folder on GitHub.";
        buildType = "Simple";
      };
      components = {
        groundhog = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.text
            hsPkgs.blaze-builder
            hsPkgs.containers
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.transformers-base
          ];
        };
      };
    }