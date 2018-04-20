{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "classy-prelude-conduit";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/classy-prelude";
        url = "";
        synopsis = "conduit instances for classy-prelude";
        description = "conduit instances for classy-prelude";
        buildType = "Simple";
      };
      components = {
        classy-prelude-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.xml-conduit
            hsPkgs.classy-prelude
          ];
        };
      };
    }