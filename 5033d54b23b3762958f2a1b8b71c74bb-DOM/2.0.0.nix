{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "DOM";
          version = "2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Dmitry Golubovsky <golubovsky@gmail.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "DOM Level 2 bindings for the WebBits package.";
        description = "This package provides monadic smart constructors for Javascript syntax representation\nimplemented in the \"WebBits\" package. Most of this package's code was autogenerated from IDL files\navailable from the Web Consortium. See e. g.\n<http://www.w3.org/TR/DOM-Level-2-Core/idl-definitions.html>\nThese constructors help generate WebBits representation of Javascript code that works with\nmethods and attributes of DOM objects in typesafe manner using monadic notation of Haskell.\n\nSee documentation for the \"Data.DOM\" module for more information and a brief usage example.\n\nIn the package version number, the version major reflects the level of DOM specification\nfor which bindings are provided.";
        buildType = "Simple";
      };
      components = {
        DOM = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.WebBits
          ];
        };
      };
    }