{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "music-dynamics-literal";
          version = "1.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Overloaded dynamics literals.";
        description = "This package allow you to write the dynamic marks of standard notation as expressions\noverloaded on result type. This works exactly like numeric literals.\nThis library is part of the Music Suite, see <http://music-suite.github.io>.";
        buildType = "Simple";
      };
      components = {
        music-dynamics-literal = {
          depends  = [ hsPkgs.base ];
        };
      };
    }