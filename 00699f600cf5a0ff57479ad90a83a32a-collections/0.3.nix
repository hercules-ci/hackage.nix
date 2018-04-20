{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "collections";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeanphilippe.bernardy (google mail)";
        author = "Jean-Philippe Bernardy, Adrian Hey and others (see AUTHORS file)";
        homepage = "";
        url = "";
        synopsis = "Useful standard collections types and related functions.";
        description = "This package provides a suite of data structures types, with a consistent API.\nIt is intended as an evolution of the data structures in the @base@ package.";
        buildType = "Custom";
      };
      components = {
        collections = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
          ];
        };
      };
    }