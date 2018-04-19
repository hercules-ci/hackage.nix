{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "template";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "johan.tibell@gmail.com";
        author = "Johan Tibell";
        homepage = "";
        url = "";
        synopsis = "Simple string substitution";
        description = "Simple string substitution library that supports\n\\\"\$\\\"-based substitution.  Meant to be used when\nText.Printf or string concatenation would lead to\ncode that is hard to read but when a full blown\ntemplating system might be overkill.";
        buildType = "Simple";
      };
      components = {
        template = {
          depends  = [
            hsPkgs.mtl
          ] ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
            ]
            else [ hsPkgs.base ]);
        };
      };
    }