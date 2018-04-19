{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      jsffi = true;
      webkit = false;
    } // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "ghcjs-dom";
          version = "0.3.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
        author = "Hamish Mackenzie";
        homepage = "";
        url = "";
        synopsis = "DOM library that supports both GHCJS and WebKitGTK";
        description = "Documentent Object Model (DOM) functions that work with\nGHCJS, but can also be used with GHC and WebKitGTK.";
        buildType = "Simple";
      };
      components = {
        ghcjs-dom = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.text
          ] ++ (if compiler.isGhcjs && _flags.jsffi
            then [ hsPkgs.ghcjs-dom-jsffi ]
            else if _flags.webkit
              then [ hsPkgs.ghcjs-dom-webkit ]
              else [
                hsPkgs.ghcjs-dom-jsaddle
              ]);
        };
      };
    }