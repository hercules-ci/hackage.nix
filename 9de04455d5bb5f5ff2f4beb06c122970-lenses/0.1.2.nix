{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "lenses";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jvranish@gmail.com";
        author = "Job Vranish";
        homepage = "";
        url = "";
        synopsis = "Simple Functional Lenses";
        description = "A simple but powerful implementation of function lenses (aka functional\nreferences, accessors, etc..).\nThey allow an easy way to manipulate fields of records";
        buildType = "Simple";
      };
      components = {
        lenses = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.template-haskell
          ];
        };
      };
    }