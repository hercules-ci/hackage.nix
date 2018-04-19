{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "mime";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006-2008 Galois Inc.";
        maintainer = "diatchki@galois.com";
        author = "Galois Inc.";
        homepage = "";
        url = "";
        synopsis = "Working with MIME types.";
        description = "Working with MIME types.";
        buildType = "Simple";
      };
      components = {
        mime = {
          depends  = [ hsPkgs.base ];
        };
      };
    }