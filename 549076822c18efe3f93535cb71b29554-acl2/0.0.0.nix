{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "acl2";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins  <tomahawkins@gmail.com>";
        author = "Tom Hawkins  <tomahawkins@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Writing and calling ACL2 from Haskell.";
        description = "Writing and calling ACL2 from Haskell.";
        buildType = "Simple";
      };
      components = {
        acl2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
          ];
        };
      };
    }