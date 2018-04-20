{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "transformers-either";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Tim McGilchrist";
        maintainer = "Tim McGilchrist <timmcgil@gmail.com>";
        author = "Tim McGilchrist <timmcgil@gmail.com>";
        homepage = "http://github.com/tmcgilchrist/transformers-either/";
        url = "";
        synopsis = "An Either monad transformer";
        description = "Drop in alternative to ExceptT.\nUses a pattern synonym to maintain compatibility with the old EitherT types\nbut is actually ExceptT under the covers.";
        buildType = "Simple";
      };
      components = {
        transformers-either = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.exceptions
            hsPkgs.transformers
          ];
        };
      };
    }