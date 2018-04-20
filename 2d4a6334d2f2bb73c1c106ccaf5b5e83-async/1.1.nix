{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "async";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2004-2010 Peter Simons";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Peter Simons <simons@cryp.to>";
        homepage = "http://gitorious.org/async/";
        url = "";
        synopsis = "Asynchronous Computations";
        description = "An implementation of IO computations that return their\nvalue asynchronously.";
        buildType = "Simple";
      };
      components = {
        async = {
          depends  = [ hsPkgs.base ];
        };
      };
    }