{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "storable-tuple";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <storable@henning-thielemann.de>";
        author = "Henning Thielemann <storable@henning-thielemann.de>";
        homepage = "http://code.haskell.org/~thielema/storable-tuple/";
        url = "";
        synopsis = "Storable instance for pairs and triples";
        description = "Provides a Storable instance for pair and triple\nwhich should be binary compatible with C99 and C++.\nThe only purpose of this package is to provide a standard location\nfor this instance so that other packages needing this instance\ncan play nicely together.";
        buildType = "Simple";
      };
      components = {
        storable-tuple = {
          depends  = [
            hsPkgs.storable-record
            hsPkgs.utility-ht
          ] ++ (if _flags.splitbase
            then [ hsPkgs.base ]
            else [
              hsPkgs.special-functors
              hsPkgs.base
            ]);
        };
      };
    }