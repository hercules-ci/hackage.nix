{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "numbers";
          version = "2007.4.29";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Augustsson";
        author = "Lennart Augustsson";
        homepage = "";
        url = "";
        synopsis = "Various number types";
        description = "Instances of the numerical classes for a variety of\ndifferent numbers: (computable) real numbers, arbitrary\nprecion fixed numbers, differentiable numbers, symbolic numbers.";
        buildType = "Custom";
      };
      components = {
        numbers = {
          depends  = [ hsPkgs.base ];
        };
      };
    }