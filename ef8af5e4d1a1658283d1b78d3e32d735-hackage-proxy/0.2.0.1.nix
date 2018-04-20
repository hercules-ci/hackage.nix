{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hackage-proxy";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/hackage-proxy";
        url = "";
        synopsis = "Provide a proxy for Hackage which modifies responses in some way.";
        description = "The motivating use case for this is testing packages with newer versions of GHC. In this case, upper bounds on base, process, and a few other packages will often prevent compilation. This proxy will allow you to strip those upper bounds and proceed with compilation. In the future, other features may be added as well, such as package replacement.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hackage-proxy = {
            depends  = [
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.Cabal
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.http-conduit
              hsPkgs.transformers
              hsPkgs.case-insensitive
              hsPkgs.conduit
              hsPkgs.tar
              hsPkgs.filepath
              hsPkgs.blaze-builder
              hsPkgs.zlib-conduit
              hsPkgs.http-types
              hsPkgs.zlib
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.optparse-applicative
              hsPkgs.containers
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }