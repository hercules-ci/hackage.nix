{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "layout-bootstrap";
          version = "0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dp_wiz <aenor.realm@gmail.com>";
        author = "dp_wiz";
        homepage = "https://bitbucket.org/dpwiz/layout-bootstrap";
        url = "";
        synopsis = "Template and widgets Bootstrap2 to use with Text.Blaze.Html5";
        description = "Template and widgets Bootstrap2 to use with Text.Blaze.Html5\nIt provides some shortcuts to hide classes and structure\nrequired for correct styling of elements and focus on a structure.";
        buildType = "Simple";
      };
      components = {
        layout-bootstrap = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.blaze-html
            hsPkgs.containers
          ];
        };
      };
    }