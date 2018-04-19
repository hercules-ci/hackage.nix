{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      old-base = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HTTP";
          version = "3001.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2002, Warrick Gray\nCopyright (c) 2002-2005, Ian Lynagh\nCopyright (c) 2003-2006, Bjorn Bringert\nCopyright (c) 2004, Andre Furtado\nCopyright (c) 2004, Ganesh Sittampalam\nCopyright (c) 2004-2005, Dominic Steinitz\nCopyright 2007 Robin Bate Boerop";
        maintainer = "Bjorn Bringert <bjorn@bringert.net>";
        author = "Warrick Gray <warrick.gray@hotmail.com>";
        homepage = "http://www.haskell.org/http/";
        url = "";
        synopsis = "";
        description = "A library for client-side HTTP";
        buildType = "Simple";
      };
      components = {
        HTTP = {
          depends  = [
            hsPkgs.network
            hsPkgs.parsec
          ] ++ (if _flags.old-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.array
            ]);
        };
      };
    }