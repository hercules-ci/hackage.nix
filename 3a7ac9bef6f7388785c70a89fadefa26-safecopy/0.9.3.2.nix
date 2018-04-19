{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "safecopy";
          version = "0.9.3.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Lemmih <lemmih@gmail.com>";
        author = "David Himmelstrup, Felipe Lessa";
        homepage = "https://github.com/acid-state/safecopy";
        url = "";
        synopsis = "Binary serialization with version control.";
        description = "An extension to Data.Serialize with built-in version control.";
        buildType = "Simple";
      };
      components = {
        safecopy = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.old-time
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.vector
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          instances = {
            depends  = [
              hsPkgs.base
              hsPkgs.cereal
              hsPkgs.template-haskell
              hsPkgs.safecopy
              hsPkgs.containers
              hsPkgs.time
              hsPkgs.array
              hsPkgs.vector
              hsPkgs.lens
              hsPkgs.lens-action
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.quickcheck-instances
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }