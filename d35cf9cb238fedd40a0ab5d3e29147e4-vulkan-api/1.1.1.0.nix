{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      useplatformandroidkhr = false;
      useplatformiosmvk = false;
      useplatformmacosmvk = false;
      useplatformmirkhr = false;
      useplatformvinn = false;
      useplatformwaylandkhr = false;
      useplatformwin32khr = false;
      useplatformxcbkhr = false;
      useplatformxlibkhr = false;
      useplatformxlibxrandrext = false;
      usenativeffi-1-0 = false;
      usenativeffi-1-1 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "vulkan-api";
          version = "1.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Artem Chirkin";
        maintainer = "chirkin@arch.ethz.ch";
        author = "Artem Chirkin";
        homepage = "https://github.com/achirkin/vulkan#readme";
        url = "";
        synopsis = "Low-level low-overhead vulkan api bindings";
        description = "Haskell bindings for vulkan api as described in vk.xml.\n\nYou can find some simple examples at <https://github.com/achirkin/vulkan/tree/master/vulkan-examples vulkan-examples> page\nor a more complete triangle rendering program at <https://github.com/achirkin/vulkan/tree/master/vulkan-triangles vulkan-triangles> page.\n\nFor further information, please refer to <https://github.com/achirkin/vulkan#readme README.md>.";
        buildType = "Simple";
      };
      components = {
        vulkan-api = {
          depends  = [ hsPkgs.base ];
          libs = pkgs.lib.optionals (_flags.usenativeffi-1-0 || _flags.usenativeffi-1-1) (pkgs.lib.optional system.isWindows pkgs.vulkan-1 ++ pkgs.lib.optional (!system.isWindows && !system.isOsx) pkgs.vulkan);
          frameworks = pkgs.lib.optional ((_flags.usenativeffi-1-0 || _flags.usenativeffi-1-1) && system.isOsx) pkgs.MoltenVK;
        };
      };
    }