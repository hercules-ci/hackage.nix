{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "formlets";
          version = "0.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Doug Beardsley <mightybyte@gmail.com>";
        author = "";
        homepage = "http://github.com/chriseidhof/formlets/tree/master";
        url = "";
        synopsis = "Formlets implemented in Haskell";
        description = "A modular way to build forms based on applicative functors,\nbased on the work described in:\n\n* Ezra Cooper, Samuel Lindley, Philip Wadler and Jeremy Yallop\n\\\"An idiom's guide to formlets\\\"\nTechnical Report, EDI-INF-RR-1263.\n<http://groups.inf.ed.ac.uk/links/formlets/>";
        buildType = "Simple";
      };
      components = {
        formlets = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.xhtml
            hsPkgs.applicative-extras
            hsPkgs.bytestring
            hsPkgs.blaze-html
            hsPkgs.transformers
          ] ++ (if _flags.base4
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ]);
        };
      };
    }