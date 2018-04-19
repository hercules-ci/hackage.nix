{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "goa";
          version = "3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Chris Done <chrisdone@gmail.com>";
        author = "Paolo Martini";
        homepage = "";
        url = "";
        synopsis = "GHCi bindings to lambdabot";
        description = "Offers an interface to be able to call Lambdabot commands within GHCi;\nthis is broken with recent Lambdabots.";
        buildType = "Simple";
      };
      components = {
        goa = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.filepath
          ];
        };
      };
    }