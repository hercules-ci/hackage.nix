{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fibonacci";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sebastian Fischer";
        author = "Sebastian Fischer";
        homepage = "http://github.com/sebfisch/fibonacci";
        url = "";
        synopsis = "Fast computation of Fibonacci numbers.";
        description = "<http://en.wikipedia.org/wiki/Fibonacci_number#Matrix_form>";
        buildType = "Simple";
      };
      components = {
        fibonacci = {
          depends  = [ hsPkgs.base ];
        };
      };
    }