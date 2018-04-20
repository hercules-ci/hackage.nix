{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "UMM";
          version = "0.1.4";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Uwe Hollerbach <uh@alumni.caltech.edu>";
        author = "Uwe Hollerbach <uh@alumni.caltech.edu>";
        homepage = "http://www.korgwal.com/umm/";
        url = "";
        synopsis = "A small command-line accounting tool";
        description = "This is a very minimal command-line program to read a\nplain-text ledger file and display balance information\nand other reports. I could have used hledger or ledger\nfor this, but I had some things I wanted to do a little\ndifferently... so I did.";
        buildType = "Simple";
      };
      components = {
        exes = {
          umm = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.parsec
              hsPkgs.old-time
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }