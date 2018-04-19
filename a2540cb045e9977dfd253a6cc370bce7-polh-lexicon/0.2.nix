{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "polh-lexicon";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/polh/lexicon";
        url = "";
        synopsis = "A library for manipulating the historical dictionary of Polish";
        description = "The library provides a binary representation of the historical\ndictionary of Polish and language markup format (LMF) parsing\nutilities which allow to translate the original LMF representation\nof the dictionary to the binary form.";
        buildType = "Simple";
      };
      components = {
        polh-lexicon = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.binary
            hsPkgs.text-binary
            hsPkgs.polysoup
            hsPkgs.dawg
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
        exes = {
          polh-binarize = {};
          polh-show = {};
        };
      };
    }