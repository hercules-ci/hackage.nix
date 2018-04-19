{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "java-character";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/java-character";
        url = "";
        synopsis = "Functions to simulate Java's Character class.";
        description = "Functions to simulate the java.lang.Character class of Java. The specification of this class is required to implement some programming language grammars.";
        buildType = "Simple";
      };
      components = {
        java-character = {
          depends  = [
            hsPkgs.base
            hsPkgs.diet
          ];
        };
      };
    }