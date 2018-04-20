{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "detrospector";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
        author = "Keegan McAllister <mcallister.keegan@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Markov chain text generator";
        description = "The `detrospector' program generates random text conforming to the general\nstyle and diction of a given source document.  It associates each\n`k'-character substring of the source document with a probability\ndistribution for the next character.  These distributions are used to\niteratively pick new characters for output.  In other words, it samples a\nMarkov chain derived from the source document.\n\nRun `detrospector' `-?' for usage information.  The program has several\nmodes.  It can generate random text, or invent individual random words which\nare not found in a dictionary.  These modes require a chain file, which is\nbuilt from a source document in another mode.\n\nDesign goals include speed and full Unicode support.  I welcome suggestions\nand patches regarding any aspect of this program.";
        buildType = "Simple";
      };
      components = {
        exes = {
          detrospector = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.zlib
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.cmdargs
              hsPkgs.mwc-random
              hsPkgs.hashable
              hsPkgs.hashmap
            ];
          };
        };
      };
    }