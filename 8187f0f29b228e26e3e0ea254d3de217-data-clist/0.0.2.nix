{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-clist";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John Van Enk <vanenkj@gmail.com>";
        author = "John Van Enk <vanenkj@gmail.com>";
        homepage = "";
        url = "http://github.com/sw17ch/data-ring";
        synopsis = "Simple functional ring type.";
        description = "Simple functional bidirectional ring type.\nGiven that the ring terminiology\nclashes with certain mathematical branches, we're using the term\nCList or CircularList instead.";
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