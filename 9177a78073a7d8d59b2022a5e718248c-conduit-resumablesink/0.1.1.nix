{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "conduit-resumablesink";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "andrew@amxl.com";
        author = "Andrew Miller";
        homepage = "http://github.com/A1kmm/conduit-resumablesink";
        url = "";
        synopsis = "Allows conduit to resume sinks to feed multiple sources into it.";
        description = "@conduit-resumablesink@ is a solution to the problem where you have a @conduit@\nsink and you want to feed multiple sources into it as each source is exhausted.\nThis is essentially the opposite of the ResumableSource functionality supplied\nwith conduit.";
        buildType = "Simple";
      };
      components = {
        conduit-resumablesink = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.void
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.conduit
              hsPkgs.conduit-resumablesink
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.bytestring
              hsPkgs.void
              hsPkgs.transformers
            ];
          };
        };
      };
    }