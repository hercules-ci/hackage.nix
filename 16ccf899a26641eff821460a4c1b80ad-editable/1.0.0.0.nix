{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "editable";
          version = "1.0.0.0";
        };
        license = "BSD-2-Clause";
        copyright = "Copyright (C) 2014 Maxwell Swadling";
        maintainer = "maxwellswadling@gmail.com";
        author = "Maxwell Swadling";
        homepage = "";
        url = "";
        synopsis = "Interactive editors for Generics";
        description = "Editable can derive editors for data types.\n\nAdd @deriving Generic@ and @instance Editable Foo@ to your\ndata type, and you can launch an editor for it with\n@editor :: Editable a => a -> IO a@.\n\n@\n{-# LANGUAGE DeriveGeneric #-}\nmodule Demo where\n\nimport Data.Editable\nimport GHC.Generics\n\ndata Foo = Bar String Int | Baz Int\nderiving (Show, Generic)\n\ninstance Editable Foo\n@\n<<https://cloud.githubusercontent.com/assets/136101/3006789/f235419e-de4d-11e3-8a4e-796d5b9ae49c.png>>";
        buildType = "Simple";
      };
      components = {
        editable = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.vty
            hsPkgs.vty-ui
          ];
        };
      };
    }