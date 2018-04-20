{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "engineering-units";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins  <tomahawkins@gmail.com>";
        author = "Tom Hawkins  <tomahawkins@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A numeric type for managing and automating engineering units.";
        description = "A numeric type for managing and automating engineering units.";
        buildType = "Simple";
      };
      components = {
        engineering-units = {
          depends  = [ hsPkgs.base ];
        };
      };
    }