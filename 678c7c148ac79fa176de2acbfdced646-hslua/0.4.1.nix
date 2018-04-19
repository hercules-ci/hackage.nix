{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      system-lua = false;
      apicheck = false;
      luajit = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hslua";
          version = "0.4.1";
        };
        license = "MIT";
        copyright = "Gracjan Polak 2007-2012, Ömer Sinan Ağacan 2012-2015";
        maintainer = "omeragacan@gmail.com";
        author = "Gracjan Polak, Ömer Sinan Ağacan";
        homepage = "";
        url = "";
        synopsis = "A Lua language interpreter embedding in Haskell";
        description = "The Scripting.Lua module is a wrapper of Lua language interpreter\nas described in [lua.org](http://www.lua.org/).\n\nThis package contains full Lua interpreter version 5.1.5.\nIf you want to link it with system-wide Lua installation, use @system-lua@ flag.\n\n[Example programs](https://github.com/osa1/hslua/tree/master/examples)";
        buildType = "Simple";
      };
      components = {
        hslua = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = if _flags.system-lua && _flags.luajit
            then [ pkgs."luajit-5.1" ]
            else [ pkgs.lua ];
        };
        tests = {
          simple-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hslua
            ];
          };
          callbacks = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hslua
            ];
          };
          haskellfun = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hslua
            ];
          };
          err_prop = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hslua
            ];
          };
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hslua
              hsPkgs.hspec
              hsPkgs.hspec-contrib
              hsPkgs.HUnit
              hsPkgs.text
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }