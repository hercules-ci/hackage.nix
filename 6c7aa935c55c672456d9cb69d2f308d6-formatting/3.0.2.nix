{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "formatting";
          version = "3.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Chris Done, Shachaf Ben-Kiki, Martijn van Steenbergen";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done, Shachaf Ben-Kiki, Martijn van Steenbergen";
        homepage = "";
        url = "";
        synopsis = "Combinator-based type-safe formatting (like printf() or FORMAT)";
        description = "Combinator-based type-safe formatting (like printf() or FORMAT), modelled from the HoleyMonoids package.";
        buildType = "Simple";
      };
      components = {
        formatting = {
          depends  = [
            hsPkgs.base
            hsPkgs.text-format
            hsPkgs.text
          ];
        };
      };
    }