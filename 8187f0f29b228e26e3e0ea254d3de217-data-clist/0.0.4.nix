{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-clist";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John Van Enk <vanenkj@gmail.com>";
        author = "John Van Enk <vanenkj@gmail.com>";
        homepage = "";
        url = "http://github.com/sw17ch/data-clist";
        synopsis = "Simple functional ring type.";
        description = "Simple functional bidirectional ring type.\nGiven that the ring terminiology clashes with certain\nmathematical branches, we're using the term CList or\nCircularList instead.";
        buildType = "Simple";
      };
      components = {
        data-clist = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
          ];
        };
      };
    }