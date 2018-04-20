{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-dsl";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tero Laitinen";
        author = "Tero Laitinen";
        homepage = "";
        url = "";
        synopsis = "DSL for generating Yesod subsite to manage an RDBMS;";
        description = "A domain specific language and a code generator desined to create RESTful services for managing an RDBMS with Yesod web framework and Persistent.";
        buildType = "Simple";
      };
      components = {
        yesod-dsl = {
          depends  = [
            hsPkgs.base
            hsPkgs.shakespeare
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.directory
            hsPkgs.array
            hsPkgs.MissingH
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.strict
            hsPkgs.Cabal
            hsPkgs.syb
            hsPkgs.uniplate
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.aeson-pretty
          ];
        };
        exes = {
          yesod-dsl = {
            depends  = [
              hsPkgs.base
              hsPkgs.shakespeare
              hsPkgs.text
              hsPkgs.directory
              hsPkgs.array
              hsPkgs.MissingH
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.strict
              hsPkgs.Cabal
              hsPkgs.yesod-dsl
            ];
          };
        };
      };
    }