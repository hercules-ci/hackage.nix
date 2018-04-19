{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "OneTuple";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) John Dorsey 2008";
        maintainer = "John Dorsey <haskell@colquitt.org>";
        author = "John Dorsey <haskell@colquitt.org>";
        homepage = "";
        url = "";
        synopsis = "OneTuple, the Singleton Tuple";
        description = "OneTuple, the Singleton Tuple";
        buildType = "Simple";
      };
      components = {
        OneTuple = {
          depends  = [ hsPkgs.base ];
        };
      };
    }