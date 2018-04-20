{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "blaze-html-contrib";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2011 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "https://github.com/chrisdone/blaze-html-contrib";
        url = "";
        synopsis = "Some contributions to add handy things to blaze html.";
        description = "Some contributions to add handy things to blaze html. Please\nsend your contributions as pull requests to\nhttps://github.com/chrisdone/blaze-html-contrib";
        buildType = "Simple";
      };
      components = {
        blaze-html-contrib = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.blaze-html
            hsPkgs.safe
            hsPkgs.data-default
            hsPkgs.pandoc
            hsPkgs.text
            hsPkgs.cgi
          ];
        };
      };
    }