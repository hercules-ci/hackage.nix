{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
      applicative-in-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bytestringparser-temporary";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jason Dusek <jason.dusek@gmail.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "";
        url = "";
        synopsis = "Combinator parsing with Data.ByteString.Lazy";
        description = "AttoParsec with a small patch so I can get on with my parser.";
        buildType = "Simple";
      };
      components = {
        bytestringparser-temporary = {
          depends  = (if _flags.split-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
            ]) ++ [ hsPkgs.base ];
        };
      };
    }