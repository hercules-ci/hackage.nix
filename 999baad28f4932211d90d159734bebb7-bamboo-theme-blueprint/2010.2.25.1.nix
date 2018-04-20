{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bamboo-theme-blueprint";
          version = "2010.2.25.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing <nfjinjing@gmail.com>\n, Григорий Холомьёв <omever@gmail.com>";
        homepage = "http://github.com/nfjinjing/bamboo-theme-blueprint";
        url = "";
        synopsis = "bamboo blueprint theme";
        description = "bamboo blueprint theme";
        buildType = "Simple";
      };
      components = {
        bamboo-theme-blueprint = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.rss
            hsPkgs.xhtml
            hsPkgs.utf8-string
            hsPkgs.gravatar
            hsPkgs.data-default
            hsPkgs.mps
            hsPkgs.hcheat
            hsPkgs.hack
            hsPkgs.hack-contrib
            hsPkgs.bamboo
          ];
        };
      };
    }