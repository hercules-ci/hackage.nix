{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "dimensional";
          version = "0.12.3";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Buckwalter 2006-2014";
        maintainer = "bjorn@buckwalter.se";
        author = "Bjorn Buckwalter";
        homepage = "http://dimensional.googlecode.com/";
        url = "";
        synopsis = "Statically checked physical dimensions.";
        description = "Dimensional is a library providing data types for performing arithmetic\nwith physical quantities and units. Information about the physical\ndimensions of the quantities and units is embedded in their types and the\nvalidity of operations is verified by the type checker at compile time.\nThe boxing and unboxing of numerical values as quantities is done by\nmultiplication and division with units. The library is designed to, as\nfar as is practical, enforce/encourage best practices of unit usage.";
        buildType = "Simple";
      };
      components = {
        dimensional = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.numtype
          ];
        };
      };
    }