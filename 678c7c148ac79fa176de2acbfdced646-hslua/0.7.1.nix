{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      system-lua = false;
      apicheck = false;
      lua_32bits = false;
      luajit = false;
      lua501 = false;
      lua502 = false;
      use-pkgconfig = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hslua";
          version = "0.7.1";
        };
        license = "MIT";
        copyright = "© 2007–2012 Gracjan Polak\n© 2012–2016 Ömer Sinan Ağacan\n© 2016–2017 Albert Krewinkel";
        maintainer = "albert+hslua@zeitkraut.de";
        author = "Gracjan Polak, Ömer Sinan Ağacan";
        homepage = "";
        url = "";
        synopsis = "A Lua language interpreter embedding in Haskell";
        description = "The Foreign.Lua module is a wrapper of Lua language\ninterpreter as described on\n<https://www.lua.org/ lua.org>.\n\nThis package contains a full Lua interpreter version\n5.3.4. If you want to link it with a system-wide Lua\ninstallation, use the @system-lua@ flag.\n\n<https://github.com/hslua/hslua-examples Example programs>\nare available in a separate repository.";
        buildType = "Simple";
      };
      components = {
        hslua = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.fail
            hsPkgs.mtl
            hsPkgs.text
          ];
          libs = if (_flags.system-lua || _flags.luajit || _flags.lua501 || _flags.lua502) && _flags.luajit
            then pkgs.lib.optional (!_flags.use-pkgconfig) pkgs."luajit-5.1"
            else pkgs.lib.optional (!_flags.use-pkgconfig) pkgs.lua;
        };
        tests = {
          test-hslua = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hslua
              hsPkgs.quickcheck-instances
              hsPkgs.tasty
              hsPkgs.tasty-expected-failure
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
            ];
          };
        };
      };
    }