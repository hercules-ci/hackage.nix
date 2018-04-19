{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "SableCC2Hs";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
        author = "Marc Fontaine";
        homepage = "";
        url = "";
        synopsis = "Generate a parser (in Haskell) with the SableCC parser generator.";
        description = "This package allows one to use parsers that were written for the SableCC\nparser generator from Haskell and Prolog.\nMore specifically it reads an XML file that is generated by SableCC\n(version sablecc-3-beta.3.altgen.20041114.zip)\nand generates Haskell and Prolog modules which contain the parser tables.\nThe package is used in the build-process of the the ProB Animator\n(http://www.stups.uni-duesseldorf.de/ProB) to build parsers for the B specification language\nand it is primarily interesting for ProB developers.\nNevertheless, there are several SableCC grammars available on the Internet\n(http://sablecc.org/wiki/GrammarPage) and in case someone ever has to use one of those grammars\nwith Haskell (for whatever reason), then this package might be useful.\nAs this package is still under development,\nit does not contain the actual parser-engines that execute the generated parser-tables.\nFor an example of a runnable B-Parser, based on this tool, look at the ProB source-code (Prolog)\nor the B-Frontend package (Haskell).\nAny questions of feedback well-come.";
        buildType = "Simple";
      };
      components = {
        SableCC2Hs = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
          ];
        };
        exes = {
          sable2hs = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.pretty
              hsPkgs.wl-pprint-text
              hsPkgs.transformers
              hsPkgs.text
              hsPkgs.loch-th
              hsPkgs.xml
              hsPkgs.filepath
            ];
          };
        };
      };
    }