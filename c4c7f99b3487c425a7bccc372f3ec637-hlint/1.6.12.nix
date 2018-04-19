{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      threaded = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hlint";
          version = "1.6.12";
        };
        license = "LicenseRef-GPL";
        copyright = "Neil Mitchell 2006-2009";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "http://community.haskell.org/~ndm/hlint/";
        url = "";
        synopsis = "Source code suggestions";
        description = "HLint gives suggestions on how to improve your source code.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.hscolour
              hsPkgs.cpphs
              hsPkgs.haskell-src-exts
              hsPkgs.uniplate
            ];
          };
        };
      };
    }