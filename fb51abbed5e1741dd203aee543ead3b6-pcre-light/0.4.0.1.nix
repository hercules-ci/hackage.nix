{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "pcre-light";
          version = "0.4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2010. Don Stewart <dons@galois.com>";
        maintainer = "Daniel Díaz <dhelta.diaz@gmail.com>";
        author = "Don Stewart";
        homepage = "https://github.com/Daniel-Diaz/pcre-light";
        url = "";
        synopsis = "A small, efficient and portable regex library for Perl 5 compatible regular expressions";
        description = "A small, efficient and portable regex library for Perl 5 compatible regular expressions\n\nThe PCRE library is a set of functions that implement regular\nexpression pattern matching using the same syntax and semantics as Perl 5.\n\nTest coverage data for this library is available at:\n<http://code.haskell.org/~dons/tests/pcre-light/hpc_index.html>\n";
        buildType = "Configure";
      };
      components = {
        pcre-light = {
          depends  = if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.bytestring
            ]
            else [ hsPkgs.base ];
          libs = [ pkgs.pcre ];
        };
      };
    }