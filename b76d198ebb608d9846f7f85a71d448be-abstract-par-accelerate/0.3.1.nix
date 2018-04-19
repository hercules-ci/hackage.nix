{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      newaccelerate = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "abstract-par-accelerate";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Adam Foltzer 2011-2012";
        maintainer = "Ryan Newton <rrnewton@gmail.com>";
        author = "Adam Foltzer 2011-2012";
        homepage = "https://github.com/simonmar/monad-par";
        url = "";
        synopsis = "Provides the class ParAccelerate, nothing more.";
        description = "Following the convention the @abstract-par@ package,\nthis package simply defines an interface, in the form of a\ntype class, and does not contain any implementation.\nImporting this module gives the user an API to\naccess @Accelerate@ computations from within\n@Par@ computations, with the added benefit that\nthe @Par@ can do integrated CPU/GPU scheduling.";
        buildType = "Simple";
      };
      components = {
        abstract-par-accelerate = {
          depends  = [
            hsPkgs.base
            hsPkgs.abstract-par
            hsPkgs.vector
            hsPkgs.array
          ] ++ (if _flags.newaccelerate
            then [
              hsPkgs.accelerate
              hsPkgs.accelerate-io
            ]
            else [ hsPkgs.accelerate ]);
        };
      };
    }