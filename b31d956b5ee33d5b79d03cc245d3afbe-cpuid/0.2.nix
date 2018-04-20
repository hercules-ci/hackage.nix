{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "cpuid";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "magr@cs.tu-berlin.de";
        author = "Martin Grabmueller <magr@cs.tu-berlin.de>";
        homepage = "http://uebb.cs.tu-berlin.de/~magr/projects/cpuid/doc/";
        url = "";
        synopsis = "Binding for the cpuid machine instruction on x86 compatible\nprocessors";
        description = "This module provides the function 'cpuid' for accessing\ninformation about the currently running IA-32 processor.  Both a function\nfor calling the 'cpuid' instruction directly, and some convenience functions\nfor common uses are provided.  This package is only portable to IA-32\nmachines.";
        buildType = "Simple";
      };
      components = {
        cpuid = {
          depends  = [ hsPkgs.base ];
        };
      };
    }